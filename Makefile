# Esto é un arquivo con 'instrucions' para compilar unha revista. 'make' é un
# programa que permite rular _outros_ programas en certa orde, baixo certas
# regras. Úsase principalmente con programas compilados (e non interpretados)
# porque pode ser tedioso escribir de cada vez comandos máis e máis longos.
# Véxase: https://www.gnu.org/software/make/manual/make.html
#
##############################################################################
# Como se usa (as opcións poden combinarse)
#
# make                         -> compila o último número da revista
# make metodo=watch            -> variable para poder usar o método incremental de typst
# make impresa                 -> xera a versión impresa do último número
# make propaganda              -> xera as propagandas do último número
# make artigos                 -> xera os PDF dos artigos individuais do último número
# make completa                -> compila a revista, artigos e propagandas do último número
#
# Para un número específico:
#
# make numero=001              -> compila a revista 001
# make numero=001 metodo=watch -> compila a revista 001 de maneira continuada
# make numero=001 impresa      -> xera a versión impresa da revista
# make numero=001 propaganda   -> compila a revista 001 e xera a propaganda
# make numero=001 artigos      -> compila os artigos da 001 separados
# make numero=001 completa     -> compila a revista, propagandas e artigos da 001
#
# Regras especiais:
#
# make todo                    -> compila todas as revistas, artigos e propagandas de todos os números
# make limpa                   -> elimina os ficheiros xerados
#
# OLLO:
# A opción 'metodo=watch' está feita para editar no momento, pero pode dar
# problemas se se combina 'todo' ou 'propaganda'
##############################################################################

# Números para os que hai revistas.
# Véxase:
# https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
# https://www.gnu.org/software/make/manual/html_node/File-Name-Functions.html
NUMEROS := $(patsubst revista_%.typ, %, $(notdir $(wildcard revistas/*/revista_*.typ)))

# Último número no proxecto
# https://www.gnu.org/software/make/manual/html_node/Text-Functions.html#index-word
ULTIMO := $(lastword $(NUMEROS))

# Se non especificamos un número para a revista (con `número=001`) entón usamos # o último
ifeq ($(numero),)
	numero := $(ULTIMO)
endif

# Nomes dos artigos para un número dado
ARTIGOS := $(patsubst artigo_%.typ, artigo_%, $(notdir $(wildcard revistas/$(numero)/artigo_*.typ)))

# Shell por defecto. Todes deberíades usar Linux
SHELL := bash

# Regras de tipo 'phony'
# Véxase: https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
.PHONY: limpa propaganda artigos impresa todo completa

# non mostrar as mensaxes para estas regras
.SILENT: propaganda artigos todo

# Que acción se vai executar por defecto
.DEFAULT_GOAL := .pdf/revista_$(numero).pdf

# Norma para evitar que se borre o PDF da revista se saímos de Make (p.e. con
# CTRL-C ao usar a compilación continuada de typst)
# Véxase: https://www.gnu.org/software/make/manual/html_node/Special-Targets.html
.PRECIOUS: .pdf/revista_$(numero).pdf

# método de compilación por defecto
# `compile` -> compilación única
# `watch`   -> compilación continuada
metodo := compile

# Opcións para compilar usando Typst
# :FACER:MIGRACION: PDF UA-1 (precisa alt-text en todo, e non soporta incluir PDFs) https://github.com/typst/typst/issues/7665
# :FACER: hai algunha maneira de meter o de --timings=... aqui?
# :FACER: volver etiquetar o PDF cando arranxen https://github.com/typst/typst/issues/8487
OPCIONS_TYPST := \
	--format pdf              \
	--root .                  \
	--pdf-standard 2.0        \
	--pdf-tagged=false        \
	--diagnostic-format short \
	--ignore-system-fonts     \
	--ignore-embedded-fonts   \
	--font-path=fontes        \
	--deps-format=json        \
	--input numero=$(numero)

# Información de Git que aparece no índice. Son parámetros que tamén lle
# pasamos a typst
INFO_GIT := \
	--input rama=$(shell git rev-parse --abbrev-ref HEAD) \
	--input hash=$(shell git rev-parse --short HEAD) \
	--input dirt=$(shell test -z "$$(git status --porcelain)" && echo "" || echo "*")

# Dependencias dun número.
# :FACER: a dependencia .../imaxes/* é molesta para as revistas novas
DEPENDENCIAS := \
	revistas/$(numero)/revista_$(numero).typ \
	revistas/$(numero)/datos_$(numero).typ \
	revistas/$(numero)/*        \
	revistas/$(numero)/imaxes/* \
	estilo.typ                  \
	momentum-citacions.csl      \
	logos/*                     \
	fontes/NerdFonts/*          \
	fontes/NewComputerModern/*  \
	fontes/Roboto/*


# Hai que asegurarse de que existen o directorios .pdf e .aux
$(shell mkdir -p .pdf)
$(shell mkdir -p .aux)


# Xeramos o PDF correspondente co número pedido, dependendo de se algunha
# dependencia cambiou ou non
.pdf/revista_$(numero).pdf: $(DEPENDENCIAS)

	@echo -e "======================================"
	@echo -e "\033[1;32mREVISTA $${numero}\033[0m\n"
	typst \
		$(metodo) \
		$(OPCIONS_TYPST) \
		$(INFO_GIT) \
		--timings=.aux/perf_{n}_revista_$(numero).json \
		--deps=.aux/deps_revista_$(numero).json \
		revistas/$(numero)/revista_$(numero).typ \
		.pdf/revista_$(numero).pdf
	@echo ""


# Xera as propagandas:
# V_C   Vertical Cor
# V_B   Vertical Branca
# H_C   Horizontal Cor
# H_B   Horizontal Branca
propaganda: \
	.pdf/propaganda_$(numero)_V_C.pdf \
	.pdf/propaganda_$(numero)_V_B.pdf \
	.pdf/propaganda_$(numero)_H_C.pdf \
	.pdf/propaganda_$(numero)_H_B.pdf

# Xera a propaganda VERTICAL A4 de COR
.pdf/propaganda_$(numero)_V_C.pdf: .pdf/revista_$(numero).pdf trebellos/propaganda_vertical.typ
	typst compile \
		$(OPCIONS_TYPST) \
		--input version=cor \
		--timings=.aux/perf_propaganda_V_C_$(numero).json \
		--deps=.aux/deps_propaganda_V_C_$(numero).json \
		trebellos/propaganda_vertical.typ .pdf/propaganda_$(numero)_V_C.pdf

# Xera a propaganda VERTICAL A4 BRANCA
.pdf/propaganda_$(numero)_V_B.pdf: .pdf/revista_$(numero).pdf trebellos/propaganda_vertical.typ
	typst compile \
		$(OPCIONS_TYPST) \
		--input version=branca \
		--timings=.aux/perf_propaganda_V_B_$(numero).json \
		--deps=.aux/deps_propaganda_V_B_$(numero).json \
		trebellos/propaganda_vertical.typ .pdf/propaganda_$(numero)_V_B.pdf

# Xera a propaganda HORIZONTAL 19:6 de COR
.pdf/propaganda_$(numero)_H_C.pdf: .pdf/revista_$(numero).pdf trebellos/propaganda_horizontal.typ
	typst compile \
		$(OPCIONS_TYPST) \
		--input version=cor \
		--timings=.aux/perf_propaganda_H_C_$(numero).json \
		--deps=.aux/deps_propaganda_H_C_$(numero).json \
		trebellos/propaganda_horizontal.typ .pdf/propaganda_$(numero)_H_C.pdf

# Xera a propaganda HORIZONTAL 19:6 BRANCA
.pdf/propaganda_$(numero)_H_B.pdf: .pdf/revista_$(numero).pdf trebellos/propaganda_horizontal.typ
	typst compile \
		$(OPCIONS_TYPST) \
		--input version=branca \
		--timings=.aux/perf_propaganda_H_B_$(numero).json \
		--deps=.aux/deps_propaganda_H_B_$(numero).json \
		trebellos/propaganda_horizontal.typ .pdf/propaganda_$(numero)_H_B.pdf


# Xera a versión impresa, usando python
impresa: .pdf/revista_$(numero).pdf
	uv run trebellos/crear_version_impresa.py .pdf/revista_$(numero).pdf


# Compila os artigos separados, para enviarllos aos redactores
artigos:
	echo -e "";\
	for A in $(ARTIGOS); do\
		echo -e "compilando artigo revistas/$${numero}/$${A}.typ";\
		typst compile $(OPCIONS_TYPST) revistas/$(numero)/$${A}.typ .pdf/artigos_$(numero)_$${A}.pdf;\
	done;\
	echo "";


# Compilar a revista, versión impresa, propagandas e artigos un número. Isto simplemente re-chama a make varias veces
completa: .pdf/revista_$(numero).pdf impresa artigos propaganda


# Compilar TODO. Isto simplemente re-chama a make varias veces
todo:
	for N in $(NUMEROS); do echo -e ""; make --no-print-directory numero=$${N} completa; done


# Limpar os ficheiros xerados
limpa:
	rm -f .pdf/* .aux/*
