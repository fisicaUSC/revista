# Edición da revista en liña a través de Typst.App

A principal vantaxe desta opción é que só require conexión á internet e unha conta
de balde. Polo que evitamos posíbeis rompedeiros de cabeza con Scoop e Makefiles
fóra de entornos GNU/Linux.

O primeiro paso é a creación dunha conta de Typst, unha vez feito isto
engadiremos un novo documento (`Empty document`) dende o «Dashboard». Dentro do
documento, no panel esquerdo, hai un menú de «Files» que permite subir ficheiros
coa opción «Upload a new file». 

<p align="center">
  <img src="https://github.com/user-attachments/assets/feab5794-71a7-45e6-9b5d-73e56a38128c" alt="" width="350" />
</p>
Para poder compilar unha revista/artigo necesitaremos
obrigatoriamente os seguintes ficheiros/cartafoles:

```
.
├── estilo.typ
├── fontes/
├── logos/
├── momentum-citacions.csl
└── revistas/
    └── XXX/
```

sendo `XXX/` o cartafol da revista que queremos editar. Para obtelos sen usar
`git`, a forma máis doada é descargar o ZIP do repositorio e copiar e pegar o
que faga falla. Por outro lado, a versión gratuíta de Typst.App ten un límite de 100
ficheiros por documento, polo que se desaconsella subir todo o repositorio. O resultado debería ter esta forma:

<p align="center">
<img width="350" alt="" src="https://github.com/user-attachments/assets/058a99a7-25d4-452b-b9b1-0ebff49e2cfe"  />
</p>

Para visualizar un artigo (`artigo_VICTOR_DD.typ`) ou a revista completa
(`revista_004.typ`) prememos o ollo que aparece á dereita do nome do documento:

<p align="center">
<img width="1910" height="886" alt="20260919_182244" src="https://github.com/user-attachments/assets/b3276427-a4f2-4322-b39f-f3ff31935d92" />
</p>
