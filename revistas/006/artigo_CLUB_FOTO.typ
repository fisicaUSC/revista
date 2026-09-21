#import("/estilo.typ"): *
#import "@preview/tiaoma:0.3.0"

#show: Artigo.with(
	titulo		: [Vendo cores onde non os hai],
	subtitulo	: [Unha pequena demostración do proceso de tricromía.],
	autoria		: "Club de Fotografía",
	tema		: "MISCELÁNEA",
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

    As técnicas desenvoltas nos primeiros anos da fotografía rexistraban
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
    cor @Cor.

    Polo tanto, debemos facer tres fotografías que conteñan cada unha 
    delas a proporción dunha determinada cor da imaxe a fotografiar.
    Esto conséguese empregando filtros, que deixan pasar a cor 
    correspondente e bloquean as demáis. Tomando unha fotografía en 
    branco e negro cun filtro, o filtro elimina as linxitudes de onda
    do resto de cores, de xeito que podemos rexistrar a "cantidade dunha
    certa cor" que hai na imaxe.

    Se facemos esto cun conxunto de cores que cubra o espectro visible 
    (vermello, verde e azul, por exemplo) podemos recuperar 
    aproximadamente todas as cores a partir das fotografías monocromas.
    Para elo, deberemos iluminalas ca cor correspondente e combinalas,
    o que  pode facerse fácilmente nun programa de manipulación de imaxes.
 
]

#figure(
    grid(
	columns: 3,
	gutter: 10pt,
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_camelia_r.jpg"
	),
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_camelia_g.jpg"
	),
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_camelia_b.jpg"
	),
	grid.cell(
	    colspan: 3,
	    image(
		width: 100%,
		"/revistas/006/imaxes/CLUB_FOTO_camelia.jpg"
	    ),
	),
    ),
    caption : [
	Fotografías dunha camelia con filtros 
	vermello, verde e azul respectivamente e tricormía resultante. 
	Fonte: Pablo Falgueras. 
    ]
)

#figure(
    grid(
	columns: 2,
	gutter: 10pt,
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_mencia.jpg"
	),
	//image(
	//    width: 90%,
	//    "/revistas/006/imaxes/CLUB_FOTO_natalia_1.jpeg"
	//),
	image(
	    width: 95%,
	    "/revistas/006/imaxes/CLUB_FOTO_natalia_2.jpeg"
	),
    ),
    caption : [
	Tricromías realizadas por membras do club. 
	Fonte: Mencía Platas (esquerda) e Natalia Martínez 
	(dereita).
    ]
)

#columns[

    == Resultados

    Para experimentar con este proceso, no club de fotografía 
    repartíronse laḿinas translúcidas de cores para empregalas como
    filtro, obtendo as imaxes que se presentan neste artigo.

    Evidentemente, a baixa calidade óptica das láminas de plástico 
    fai que os resultados non se axusten de maneira moi correcta
    ás cores reais. Malia todo, este experimento serve para o obxetivo 
    de demostrar o funcionamento do proceso e lograr intuir 
    algunhas das cores naturais. As fotografías orixinais só conteñen 
    información das diferentes tonalidades de vermello, verde e azul, 
    pero ao combinalas poden apreciarse outras colores que xorden da 
    mistura.
   
    //#figure(
    //	image(
    //	    width: 100%,
    //	    "/revistas/006/imaxes/CLUB_FOTO_coche.jpg"
    //	),
    //	caption : [
    //	    Tricromía dun coche de xoguete. Fonte: Pablo Falgueras.
    //	]
    //)    

    Por outra banda, a obtención de cores hiperrealistas tampouco é
    necesariamente o obxetivo co que se pode facer unha tricromía, 
    xa que hoxe en día existen métodos mellores se eso é o que se busca. 
    Este proceso tamén pode producir imaxes con coloreados interesantes,
    difíciles de conseguir doutro xeito, sen máis necesidade de equipamento 
    que unha cámara que permita realizar fotografías en branco e negro 
    e tres láminas de plástico de cores.
 
//    #align(center)[
//	#link(
//	    "https://chat.whatsapp.com/EMHzSoXeiDn7jj6QCrnorE",
//	    tiaoma.barcode(
//		"https://chat.whatsapp.com/EMHzSoXeiDn7jj6QCrnorE",
//		"QRCode",
//		options: (
//		    option-1 : 4,   // corrección de erros, 1-4
//		    option-2 : 8,   // detalle, 1-40
//		    scale    : 1.2,
//		),
//	    )
//	)
//    ]

    #figure(
	image(
	    width: 100%,
	    "/revistas/006/imaxes/CLUB_FOTO_geranio.jpg"
	),
	caption : [
	    Tricromías dun xeranio. Fonte: 
	    Pablo Falgueras. 
	]
    )

    Aproveitamos tamén a ocasión para agradecer aos membros do club que 
    participaron na actividade e invitar ao lector a unirse 
    no club de fotografía. Todo o mundo pode achegarse a colaborar,
    propoñer actividades e aprender, independentemente do nivel de 
    coñecemento previo.

    #CrearBibliografia("/revistas/006/bibliografia_CLUB_FOTO.bib")

]
