#import("/estilo.typ"): *
#import "@preview/tiaoma:0.3.0"

#show: Artigo.with(
	titulo		: [Vendo cores onde non os hai],
	subtitulo	: [Unha breve introdución ao proceso de tricromía],
	autoria		: "Club de Fotografía",
	tema		: "???",
)

#columns[

    == Introdución: historia e fundamentos

    Hoxe en día non nos sorprende a idea de poder capturar o mundo que
    nos rodea en fotografías e vídeos, extremadamente fieis á realidade
    e con gran facilidade. Sen embargo, este medio ten apenas dous 
    séculos de historia, e ao longo do seu desenvolvemento tivo que
    resolver moitos problemas técnicos ata chegar ás capacidades
    actuais. E un dos máis importante é, ao mesmo tempo, un dos máis 
    evidentes: como podemos facer fotografías a cor?

    As técnicas desenvoltas nos primeiros anos da fotografía rexitraban
    a imaxe nunha única capa fotosensible, polo que a contribución
    correspondente a cada lonxitude de onda da luz perdíase. Polo tanto,
    se pudiésemos tomar a mesma fotografía filtrando as cores con filtros
    vermello, verde e azul, e despois as combinásemos, proxectando cada 
    imaxe ca cor correspondente, nos nosos ollos percíbiríamos a 
    imaxe coloreada. Este foi o xeito no que James C. Maxwell produciu a 
    primeira fotografía a cor no ano 1861.

    #figure(
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	caption : [
	    Primeira tricromía tomada por James C. Mawxell @Ribbon. 
	]
    )

    Durante os primeiros anos da fotografía, este foi o xeito de lograr
    imaxes a cor, aínda que a súa fidelidade era baixa debido á 
    irregularidade na sensibilidade das sustancias fotosensibles 
    empregadas. A técnina era engorrosa, xa que necesitaba tomar tres 
    fotografías diferentes para poder producir unha única imaxe, e os
    desenvolvementos posteriores fixeron que a tricromia caese en desuso
    para a realización habitual de fotografías. Sen embargo, o principio 
    de combinar unhas poucas cores en diferentes proporcións para 
    reproducir o espectro completo segue a empregarse actualmente, 
    incluso na fotografía dixital, para lograr imaxes a cor.
    Tamén segue a empregarse en astrofotografía, xa que os sensores 
    mocoromos adoitan ser máis sensibles á luz e ter unha mellor 
    resolución espectral, o que resulta moi importante ao realizar 
    fotografías a obxectos pequenos e tenues. 

    == Procedemento
 
    O proceso de tricromía funciona porque se corresponde co xeito no 
    que o noso cerebro procesa as cores. As células sensibles á cor dos 
    nosos ollos (os conos) non rexistran todas as lonxitudes de onda, 
    senón que exiten tres tipos que son sensibles a espectros 
    diferentes: os conos S son sensibles a cores próximas ao azul, os 
    conos M son sensibles a cores próximas ao verde e os conos L son 
    sensibles a cores próximas ao vermello. O cerebro recibe información 
    sobre a proporción de cada cor e combínaa para crear unha imaxe a 
    cor.

    Polo tanto, debemos facer tres fotografías que conteñan cada unha 
    delas a proporción dunha determinada cor da imaxe a fotografiar.
    Esto conséguese empregando filtros, que deixan pasar a cor 
    correspondente e bloquean as demáis. Tomando unha fotografía en 
    branco e negro cun filtro, o filtro elimina as linxitudes de onda
    do resto de cores e o sensor en branco e negro rexitra a intensidade
    da luz que lle chega. Deste xeito podemos rexitrar a "cantidade dunha
    certa cor" que hai na imaxe.

]

#figure(
    grid(
	columns: 3,
	gutter: 10pt,
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_coche_r.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_coche_g.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_coche_b.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
    ),
    caption : [
	Fotografías dun coche de xoguete con filtros 
	vermello, verde e azul respectivamente. Tomadas por 
	Pablo Falgueras. 
    ]
)

#columns[

    Se facemos esto para diferentes cores que cubran o espectro visible 
    (vermello, verde e azul, por exemplo) podemos recuperar 
    aproximadamente todas as cores a partir das fotografías monocromas.
    Para elo, deberemos iluminalas ca cor correspondente e combinalas.
    Esto pode facerse fácilmente nun programa de manipulación de imaxes.
 
]

#figure(
    image(
	width: 100%,
	// "/revistas/006/imaxes/CLUB_FOTO_coche_cor.jpg"
	"/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
    ),
    caption : [
	Fotografías a cor dun coche de xoguete, combinando as
	diferentes imaxes monocromas. Realizada por Pablo Falgueras. 
    ]
)

#columns[

    == Resultados

    Para experimentar con este proceso, no club de fotografía 
    repartíronse laḿinas translúcidas de cores para empregalas como
    filtro. Mostramos os resultados dalgúns membros do club.
]

#figure(
    grid(
	columns: 3,
	gutter: 10pt,
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_mecia.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	image(
	    width: 100%,
	    //"/revistas/006/imaxes/CLUB_FOTO_natalia_1.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_natalia_2.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
    ),
    caption : [
	Fotografías realizadas por membras do club. 
	Tomadas por Mencía Platas (esquerda) e Natalia ??? 
	(centro e dereita).
    ]
)

#columns[

    Estas primeiras fotografías con reproducen con total fidelidade 
    as cores naturais, pero serven para exemplificar o funcionamento
    do proceso. as imaxes que se combinan só conteñen diferentes 
    tonalidades de vermello, verde e azul, pero ao xuntalan poden 
    empezar a apreciarse outras colores que xorden da mistura.
 
    Evidentemente, a calidade óptica das láminas de plástico é moi 
    baixa, pero serven para o obxetivo de demostrar o funcionamento 
    do proceso e lograr diferenciar algunhas cores.
    É de notar tamén que as fotografías deben ser tomadas en 
    condicións de luz moi boas, e o proceso de combinación das imaxes
    require práctica para poder reproducir as cores adecuadamente.
   
]

#figure(
    grid(
	columns: 2,
	gutter: 10pt,
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_xeranio.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
	image(
	    width: 100%,
	    // "/revistas/006/imaxes/CLUB_FOTO_camelia.jpg"
	    "/revistas/006/imaxes/CLUB_FOTO_lazo.jpg"
	),
    ),
    caption : [
	Fotografías dun xeranio e unha camelia. Tomadas por 
	Pablo Falgueras. 
    ]
)

#columns[


    Por outra banda, a obtención de cores hiperrealistas tampouco é
    necesariamente o obxetivo co que se pode facer unha tricromía, 
    xa que hoxe en día existen métodos mellores se eso é o que se busca. 
    Este proceso tamén pode producir imaxes con coloreados interesantes,
    difíciles de conseguir doutro xeito.

    == Conclusións

    Malia que o proceso de tricromía xa non é o método habitual para
    lograr fotografías a cor, segue a ser interesante dende un punto
    de vista artístico. 

    As inevitables imperfeccións do proceso dan lugar a resultados 
    moi interesantes, sen máis necesidade de equipamento que unha 
    cámara que permita realizar fotografías en branco e negro e tres 
    láminas de plástico de cores.
 
    #align(center)[
	#link(
	    "https://chat.whatsapp.com/EMHzSoXeiDn7jj6QCrnorE",
	    tiaoma.barcode(
		"https://chat.whatsapp.com/EMHzSoXeiDn7jj6QCrnorE",
		"QRCode",
		options: (
		    option-1 : 4,   // corrección de erros, 1-4
		    option-2 : 8,   // detalle, 1-40
		    scale    : 1.2,
		),
	    )
	)
    ]

    Aproveitamos tamén a ocasión para invitar ao lector a participar 
    no club de fotografía. Todo o mundo pode achegarse a colaborar 
    e propoñer actividades, independentemente do nivel de coñecemento.
    O enlace á comunidade de WhatsApp pode atoparse no QR.

    #CrearBibliografia("/revistas/006/bibliografia_CLUB_FOTO.bib")

]
