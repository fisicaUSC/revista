#import("/estilo.typ"): *

#show: Artigo.with(
    titulo     : [¿Como se fai esta revista?],
    subtitulo  : [As dificultades técnicas de crear un documento dixital de calidade.],
    afiliacion : [(un) xefe de Edición da Revista *$arrow("M")$*omentum],
    autoria    : "David Cotelo Varela",
    estilo     : "PROGRAMACIÓN e HISTORIA",
)

#columns[

    A historia das revistas de física da nosa facultade comezou nos anos
    oitenta ca _Gota de Milikan_, seguida do panfleto _Físical Interviú_ a
    comezos de milenio, e finalmente ca revista *$arrow("M")$*omentum que
    apareceu como unha idea entre colegas en outubro do 2024, como proxecto
    aberto en xaneiro do 2025 (que foi cando eu me metín no proxecto) e
    como papel impreso en abril do mesmo ano.

    Entre dito outubro e abril houbo moitas complicacións burocráticas, legais,
    económicas e de comunicación, que seguramente vos poidan explicar mellor os
    fundadores da revista (Álvaro Pallas, Celia Álvarez e Daniel Vázquez), pero
    a min ditos problemas non me importan demasiado. Eu quero falar de como se
    fixo a revista, literalmente. De como se fixo un documento PDF de calidade,
    estable, versionado e reproducible. Interésame falar (e queixarme) de como
    se editou a revista, de como se edita agora e (tal vez) de como se editará
    no futuro.

    == O que se fixo ao comezo

    Daniel Vázquez (o primeiro xefe de edición) fixo unha gran labor
    reuníndonos a todos durante meses para decidir como debería ser a revista:
    ¿Que formato tería, dixital ou papel? ¿Que ferramenta se usaría para
    facela, unha interface gráfica como `Adobe` ou `Word`, ou facela con
    código, p.e. `LaTeX`, `HTML+CSS`? ¿Como se garda e se cambia co tempo,
    usamos Google Drive sen máis, usamos un sistema de control de versións,
    como `Git`? ¿Que estilo ten, como nos gustaría que se vise? ¿Como se
    reproducen os números, como facemos para obter _outra_ revista co mesmo
    estilo ca anterior? ¿Como se reparte o traballo, que fai cada persoa? ¿Como
    nos esperamos que escriban os artigos os redactores para logo enviárnolos?
    Estas non son preguntas triviais. Levounos meses de reunións, probas e
    discusións respondelas, inda que fose parcialmente.

    Decidiuse que se ía facer unha versión principal dixital, que podería ser
    adaptada rapidamente (o cal resultou ser mentira, de _rapidamente_ nada) a
    unha versión física maquetada. A revista en si sería un documento PDF feito
    en `LaTeX`, unha linguaxe de programación usada por case todos no ámbito
    académico científico para realizar memorias de laboratorio ou apuntes. A
    motivación para usar `LaTeX` era múltiple: é unha linguaxe coñecida por
    (case) todas as persoas da facultade (isto tamén resultou ser mentira,
    ninguén sabe programar en `LaTeX`); ten funcionalidade de sobra para facer
    o que queríamos; e ao ser código podíamos versionalo con `Git`, o cal
    aseguraba unha boa colaboración entre programadores, e sobre todo, que o
    proxecto de código non se perdese no tempo.

    #figure(
        image( "/revistas/006/imaxes/DAVID_CV_desenhos_orixinais.png"),
        caption: [
            Un primeiro modelo da portada e dun artigo, grazas a Víctor Díaz.
        ]
    )

    O estilo de Momentum naceu da inspiración noutras revistas. A portada,
    índice e artigos son adaptacións doutras (creo lembrarme) tres ou catro
    revistas doutros países. Decidiuse que tería unha portada simple cunha
    imaxe cadrada, título simple cun detalle estilístico (a *$arrow("M")$*)
    recoñecible, cada revista debía ter unha cor de _resalte_ distinta en cada
    exemplar, o índice debía ter un fondo de cor á dereita, os artigos deberían
    encaixar nun número enteiro de páxinas, ter dúas columnas e ter un título
    ben grande ao comezo... Pasouse por _moitas_ iteracións ata chegar á
    revista que estás a ler agora.

    O estilo final da portada, contraportada e dos artigos foi a concurso
    aberto, que gañou Víctor Díaz e quen fixo a portada inicial en
    Scribus#footnote[Dita portada feita en Scribus tívena que pasar de cero a
    `LaTeX`, o cal foi das experiencias máis frustrantes da miña vida, chegando
    a provocarme pesadelos.] e o exemplo dos artigos e a contraportada a
    `LaTeX` seguindo a inspiración que discutimos en varias reunións. O índice
    foi feito de cero por Dani. Eu encargueime de pasar todo a un so documento
    de `LaTeX` (portada, índice, artigos e contraportada), e de crear a
    estrutura de directorios, ficheiros #footnote[Hai dous motivos polos que os
    números das revistas teñen tres díxitos sempre, é dicir, 001, 002, etc. Por
    un lado, rechear con ceros á esquerda asegura a orde alfabética en calquera
    sistema de ficheiros ao ordear o proxecto; por outro lado, era un promesa
    pola miña parte: _o proxecto tiña que ser tan bo que aguantase ata chegar
    ás tres cifras_.] , dependencias e proceso de compilación do proxecto (a
    parte divertida, se me preguntades). Tamén me encarguei de decidir como se
    ía versionar o código (cal sería o proceso para usar `Git` _localmente_ e
    na _rede_ a través de peticións en Github).

    Foron centos de horas de programación e de xestión, pero conseguímolo. O
    número 001 da revista Momentum saíu o 25 de abril do 2025. Pero saíu polos
    pelos, como aprobar cun 5 raspado.

    == Sacar un 5 no exame non é dabondo

    Rematar un número foi algo chulísimo pero á vez mostrounos que non sabíamos
    o que facíamos e sacou á luz un montón de fallas técnicas (problemas con
    `LaTeX`, `Git`, co proceso de compilación, etc.) e organizativas (datas,
    delegación e orde do traballo).

    O código orixinal da revista 001 non compilaba, pero sen saber por que
    devolvíanos un PDF; esquecémonos de numerar as páxinas; a versión impresa
    dependía doutro software que non tíñamos; era moi, pero que _moi_ difícil
    encaixar os artigos nun número enteiro de páxinas; facía falla manipular as
    imaxes manualmente con outro software (`imagemagick` ou `Gimp`), pra
    reducirlle o peso e cambiarlles a forma, o cal era lento; a bibliografía
    era difícil e lenta de manexar; había moitísimos detalles tipográficos que
    estaban mal (fontes, tamaños, espazados...); o proceso de compilación era
    ridiculamente lento, uns 50 s orixinalmente, e por riba era bastante lioso;
    a colaboración en Github era lenta; a organización dentro e entre os grupos
    (dirección, edición, corrección) non era boa; as datas non se respectaban;
    e podería seguir queixándome. Hai uns meses fixen un comentario público
    dicindo que odio a revista, o que non expliquei é o motivo: levo meses
    lidiando con todo isto.

    Moitos destes problemas foron solucionándose co tempo. Por exemplo, as
    fallas de compilación orixinais arranxounas Andrea Real, quen se nos uniu
    oficialmente como xefa de edición no curso 25-26 e quen axudou a mellorar
    masivamente o código; os programas optimizáronse, a interface de macros
    para os redactores simplificouse, e o proceso de compilación acelerouse e
    simplificouse tamén; os detalles tipográficos foron pulíndose entre
    reunións e discusións; a organización xeral dentro do grupo de edición e co
    resto de grupos foi mellorando (a base de discusións exclusivamente); as
    datas comezaron a respectarse máis...

    #figure(
        image( "/revistas/006/imaxes/DAVID_CV_propaganda.png"),
        caption: [
            Exemplo dos carteis propagandísticos que colgamos polas facultades.
            Créanse _automaticamente_ a partir do PDF orixinal da versión
            dixital da revista.
        ]
    ) <fig:propaganda>

    Co tempo e ca experiencia vímonos na necesidade de implementar novas
    funcións que eran moi complexas, como xerar un PDF etiquetado e accesible
    (`Tagged PDF` + #box[`PDF/UA-1`]); manexar mellor os espazos de cores do
    sistema, usando `SpotColors` ou `CMYK` en lugar de #box[`s/RGB`];; xerar
    automaticamente a versión impresa (proceso de _imposición_), así como os
    carteis propagandísticos en 16:9 e A4 (@fig:propaganda) que colgamos pola
    facultade, e en xeral, manexar todo o proceso de _pre-impresión_; manter un
    modelo simplificado da revista con menor tempo de compilación para uso dos
    redactores; entre outros. Todo feito a man en `LaTeX`, automatizado con
    `make`, `bash` e `Python`. A revista foise complicando, o código fíxose
    máis elaborado, e a funcionalidade ampliouse moito. Non teñades vergoña,
    mirade o código en #link("https://github.com/fisicaUSC/revista",
    [`https://github.com/fisicaUSC/revista`]).

    == Inda así, está aprobado

    A pesar de todo apañámonos durante 6 números. O motivo principal do éxito
    foi a gran cantidade de persoas que se nos uniron á equipa, e en concreto
    ao grupo de edición. No curso 25-26 comecei unha tarefa de titorización ca
    intención de facilitar o acceso ao proxecto a xente nova, explicando o
    proceso completo de edición dun número dende a recepción de artigos, a
    propia edición dun número, ou o manexo das versións do código con Git.
    Pasamos dun par a oito persoas programando: Daniel Vázquez, Andrea Real,
    María Alonso, Diego Couto, Víctor Díaz, Artai Isasi, María Caplea e
    Sebastián Táboas. Tamén tivemos a compañía de moitas persoas que estiveron
    discutíndonos e dicíndonos como mellorala, inda que non participasen
    directamente no código, como Celia Álvarez, Mauro Garrido, Carolina Castro,
    Ana Díaz, Cristóbal Santos, Manuel Vázquez, Xulia Arán e Uxía Tubío.
    Realmente espero non esquecerme de ninguén. Este foi o motivo polo que xa
    hai 6 números.

    #figure(
        image( width: 100%, "/revistas/006/imaxes/DAVID_CV_equipa.png"),
        caption: [
            Parte da equipa da revista, gozando dunha ben merecida cea o 11 de
            xuño do 2026. De esquerda a dereita: Xulia Arán, Mauro Garrido,
            Diego Couto, Sebastián Táboas, David Cotelo, Andrea Real, Artai
            Isasi, Manuel Galán, Víctor Díaz, Uxía Tubío e Carolina Castro.
        ]
    ) <fig:equipa>

    == O presente

    Actualmente o proceso xerar a revista (simplificado enormemente) é o
    seguinte. Redactores envían seus artigos ao correo
    #link("revistafisicaUSC@gmail.com", [`revistafisicaUSC@gmail.com`]), onde a
    equipa de dirección fai un pequeno triaxe e organiza o traballo para
    despois. Unha vez rematadas as datas de entrega, na equipa de edición
    repartímonos os artigos e editámolos, o cal consiste en pasar o texto
    orixinal (texto plano, PDF, `Word`, `LaTeX`, etc.) ao modelo que temos,
    axustando espazados, tamaños, imaxes, bibliografía e o que sexa. Continúa a
    equipa de corrección, quenes se aseguran de que a revista esté escrita
    _ben_. Deseguido, os redactores reciben unha copia do seu artigo para
    confirmar o traballo, e despois damos un repaso editorial final e rematamos
    o proceso compilando os carteis e a versión impresa.

    O proceso é, en xeral, máis complexo. En total leva aproximadamente un mes
    de traballo por parte dunha ducia de persoas.

    #figure(
        image( "/revistas/006/imaxes/DAVID_CV_gantt.png"),
        caption: [
            Un diagrama de Gantt _orientativo_ do traballo de facer unha revista.
        ]
    )

    Si, a revista é complicada. Un esforzo moi grande que levamos facendo
    durante meses na nosa equipa é facilitar na medida do posible a edición da
    revista. Aparte das clases/titorías para os novos, esmerámonos para facer
    que o proxecto de código fose mellor, máis simple, máis rápido, e máis
    entendible. Cousas como o proceso de compilación (a lóxica da compilación
    con `latexmk` e `make`, e a súa duración mediante optimiazacións malsás do
    propio `LaTeX`), o manexo de dependencias (distribucións de `LaTeX`,
    paquetes), o fluxo de traballo colaborando en Github (traballo comunal en
    distintas ramas, estratexias para xuntalas), a edición de números concretos
    (corrección de erratas, colocación dos artigos). Penso que fixemos un bo
    traballo. Como referencia, dende a creación da revista fixéronse cambios ao
    longo dunhas 175 contribucións, cambiando a man unhas ~16.000 liñas de
    código entre uns 230 ficheiros diferentes. E _todo_ feito a man por 8
    persoas.

    Un dos cambios máis relevantes que fixemos no código foi unha migración de
    linguaxe de `LaTeX` a `Typst` #link("https://typst.app",
    [`https://typst.app`]), que é unha alternativa moderna, potente, rápida e
    sinxela de usar. A instalación do programa e das dependencias é moito máis
    simple, a compilación é unhas 100 veces máis rápida, os erros son máis
    fáciles de arranxar, a sintaxe é máis clara, e en xeral, síntese como un
    programa moderno e non dos anos 60. Se estades a usar `LaTeX` para as vosas
    memorias de laboratorio ou apuntes, recoméndovos que probedes `Typst`.

    == O futuro

    Confío na xente nova que se quede no proxecto (inda que polo de agora eu
    non o teño pensado abandonar, realmente pásoo ben). As persoas que
    mencionei antes (véxase tamén a @fig:equipa) e sobre todo as novas que
    veñan no futuro son quen van manter a revista. Unha parte crucial do noso
    traballo é asegurarnos de que exista relevo xeracional, que haxa xente que
    preserve o interese e que saiban como levar o proxecto. Noso traballo non
    so foi programar e elixir o estilo visual da revista, tamén temos que
    atraer a máis xente e educalos no proceso de edición. É un proxecto feito por
    estudantes, para outros estudantes.

    == Intelixencia Artificial? Non, grazas

    Neste proxecto non se permite o uso de modelos de IA comerciais. Non
    estamos a xerar un produto mediocre o máis rápido posible para venderche
    nada. Tampouco estamos nun posto de traballo cansados do que facemos e con
    presa para satisfacer ao noso xefe. Estamos a facer un proxecto estudantil,
    onde o proceso de crear unha revista é tan valioso como a revista final.
    Para cada unha das \~12.000 liñas de código desta revista existe polo menos
    unha persoa que sabe por que dita liña se escribiu así, xa que cada liña é
    o resultado de decisións humanas, discusións, ensaio e error. O proceso
    ensinounos a todos a programar mellor, a xestionar un proxecto e a
    colaborar. Gústanos facer as cousas nós mesmos, aprender, mellorar e ao
    final do día, estar orgullosos do traballo que fixemos _nós_. Saltar todo o
    proceso e que un modelo de IA comercial nos xere un montón de código sería
    profundamente inútil: para que faríamos unha revista, entón?

]
