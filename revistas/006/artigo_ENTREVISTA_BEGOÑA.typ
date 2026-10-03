#import("/estilo.typ"): *

#show: Artigo.with(
  titulo: [Entrevista a Begoña Vila Costas],
  subtitulo: [A observación espacial dende o centro máis icónico do mundo.],
  autoria: [Gemma Ruiz Lavandeira],
  tema: "ENTREVISTAS",
)

#show: columns

María Begoña Vila Costas naceu en Vigo un ano despois de que John Glenn se
convertese no primeiro estadounidense en orbitar a Terra. Este fito
histórico da NASA pareceu marcar a traxectoria desta galega formada entre a
Universidade de Santiago de Compostela e o Instituto de Astrofísica de  //As Canarias levan artigo en galego, pero vou respectar a
Canarias, que se doutorou en Astrofísica na Universidade de Manchester.  //forma orixinal ao tratarse dunha institución.

A súa pegada continuou ata Canadá, onde traballou nunha empresa baixo a
dirección da Axencia Espacial dese país, deseñando e construíndo o Fine
Guidance Sensor, que empregaría a NASA para o telescopio espacial James Webb. A
raíz desta colaboración, pasou a formar parte do centro de voo espacial Goddard,
o primeiro centro espacial de voo da NASA e a maior organización de científicos
e enxeñeiros dedicados á observación do espazo nos Estados Unidos.

Begoña brilla polos seus logros tanto dentro como fóra de España: en 2016 a
NASA outorgoulle a medalla Exceptional Public Achievement polo deseño e
desenvolvemento do Fine Guidance Sensor; e en 2022, a Exceptional Public Service
Medal tras o lanzamento do James Webb no Nadal de 2021. Ademais de viguesa
distinguida, foi acreditada polas Súas Maxestades os Reis de España como
Embaixadora Honoraria da Marca España en Ciencia e Innovación e formou parte da
lista Forbes das 100 mulleres máis influentes en España no 2022 e no 2023.

#divider()

#Pregunta[
  Moitas grazas, Begoña, por darnos a oportunidade de falar contigo sobre a túa
  extraordinaria carreira profesional e sobre a investigación espacial que se
  leva a cabo na actualidade. Gustaríame comezar polo principio da túa
  historia, como chega unha astrofísica europea ata o centro de voo Goddard da
  NASA? Como foi o recrutamento?
]

Grazas a vós por esta entrevista. Inda que me gustaba moito traballar no
departamento de astrofísica na Universidade de Cardiff investigando e dando
clases, despois da boa experiencia coa miña tese en Jodrell Bank (Universidade
de Manchester), cando empecei a traballar no Canadá, xa na empresa privada para
telescopios no espazo, en particular no James Webb, tiñamos reunións a miúdo
cos encargados da NASA que ían recibir os dous instrumentos da
contribución canadense -- o Fine Guidance Sensor (FGS) e o Near Infrared Imager
and Slitless Spectrograph (NIRISS) --. Eles coñeceron o meu traballo como enxeñeira
de sistemas neses dous instrumentos, gustáballes ese traballo e aprenderon a
confiar en min. Cando entregamos os instrumentos para a integración do telescopio
en Goddard, tivo sentido pedirme que seguise o meu traballo xa alí -- en parte
polo ben que os coñecía, pero tamén sabendo que podía encargarme doutras cousas,
xa que tiñan fe de que sería unha boa adición ao seu equipo.

Ou sexa, é resultado de moito traballo ao longo da miña vida, de aceptar novos
retos, pero tamén de prepararse e facer as cousas o mellor que se poida co equipo
e inspirar a confianza de que se vai cumprir aquilo do que se é responsable.

#figure(
  image("/revistas/006/imaxes/ENTREVISTA_BEGOÑA_1.jpg")
)

#Pregunta[
  A túa primeira misión dentro do proxecto para lanzar ao espazo o telescopio
  espacial James Webb foi deseñar o sensor guía (o Fine Guidance Sensor) e a
  cámara-espectrógrafo (Near Infrared Imager and Slitless Spectrograph). En que
  consisten estes aparatos e onde se sitúan dentro de toda a tecnoloxía que
  conforma o telescopio? Durante as probas do telescopio leváronse a cabo
  ensaios a temperaturas moi baixas, cal é a súa importancia e como se
  simularon estas condicións espaciais no laboratorio?
]

O FGS é crítico para o telescopio porque é o que permite que apunte onde sexa
necesario para a ciencia e que o telescopio se manteña estable cando os datos
científicos se están tomando -- é como se queres tomar unha foto coa cámara,
pero se a cámara se está movendo, a foto sería movida. Facemos isto buscando
unha estrela en particular en cada zona do ceo que se queira mirar e mandando a
información da súa posición moi precisamente -- 1 milisegundo de arco (mas) --
16 veces cada segundo. Esta información é recibida polo control de altitude do
telescopio, que pode mover un espello para que a estrela se quede exactamente
nesa posición cando os datos científicos se están tomando.

O telescopio Webb pode observar galaxias, estrelas, etc., obxectos moi afastados
-- os primeiros que se formaron no Universo --, pero tamén pode observar no noso
Sistema Solar. O instrumento de guía funciona distinto neste último tipo de observacións.

#figure(
    image("/revistas/006/imaxes/ENTREVISTA_BEGOÑA_2.jpg"),
    caption: [
        Begoña Vila nas probas do baleiro do telescopio James Webb, Güiana
        Francesa. Fonte: NASA.
    ]
) <fig:begoña:proba>

O instrumento NIRISS ten unha roda con filtros para poder facer distintas
imaxes en distintas lonxitudes de onda e tamén ten elementos que dispersan a
luz para poder facer espectros (grisms e prismas). Ademais, conta cun elemento
nesa roda que elimina a luz dunha estrela por interferencia e permite buscar
planetas cerca desa estrela -- é o instrumento de Webb que pode buscar
planetas máis próximos ás estrelas coa tecnoloxía desa máscara. Como todos os
instrumentos de Webb con moitos avances tecnolóxicos.

Cando lanzas un telescopio ao espazo hai probas fundamentais -- de vibración (xa
que o foguete vai sacudir moito o que lances); de acústica (xa que o foguete vai
facer moito ruído e iso é outra forma de vibración); de compatibilidade
electromagnética (que cando fales con cada instrumento ou coa nave non haxa
interferencias) e as probas frías. Tiven a sorte en Webb de encargarme como
directora da última proba fría dos instrumentos en Goddard e de participar
tamén na proba fría en Houston xa cos espellos unidos aos instrumentos. Estas
probas son fundamentais porque duplican as condicións que verán os
instrumentos no espazo -- o baleiro e as temperaturas tan baixas (no caso dos
instrumentos de Webb a -233°C). Traballamos 24 horas ao día en rolda, 7 días á
semana no caso de Webb, por 100 días para ensaiar todo o que necesitamos facer en
órbita tan eficientemente como sexa posible e comprobar a alienación de todas as
compoñentes -- son probas difíciles que requiren moita coordinación e un equipo
grande para executalas.

#Pregunta[
  Avanzando ata as semanas previas ao lanzamento, comentaches nalgunha ocasión
  o apaixonante que supuxo a viaxe co telescopio ata o lugar de lanzamento na
  Güiana Francesa, como foi esa viaxe e como foi a chegada a un grupo con
  científicos e científicas de todo o mundo participando nunha misión global
  entre NASA e ESA?
]

Foi moi especial para min estar na Güiana Francesa para as últimas probas do
telescopio (véxase a @fig:begoña:proba), poder participar no lanzamento e tamén
poder facer a transmisión dese lanzamento en español cun compañeiro do equipo
de Ariane 5, o foguete contribuído pola ESA. Sabía que a miña familia e amigos
estarían mirando e era como falar con eles directamente. O lanzamento foi o
regalo de Nadal mais desexado para todo o equipo que traballamos neste
telescopio, e teño un recordo moi especial deses case dous meses que pasei alí
-- inda que foi cando había restricións pola COVID que tivemos que coordinar.

Despois do lanzamento, xa me volvín a Baltimore, onde está o centro de operacións
de Webb, no STScI (Space Telescope Science Institute) para apoiar os 6 meses
que tivemos de comisión -- despregando todas as compoñentes, aliñando os
espellos, acendendo os instrumentos e calibrándoos, etc. Tamén outra
experiencia incrible co equipo, inda que traballamos tamén en roldas de 24 horas ao
día, 7 días á semana por eses 6 meses -- un traballo moi gratificante e
enriquecedor.

#Pregunta[
  Posto en marcha o telescopio e entrando na fase de adquisición dos datos que
  nos proporciona para o estudo do Universo, os ollos están postos agora no
  Nancy Grace Roman Space Telescope (homenaxeando a primeira astrónoma xefa da
  NASA). Que papel vai xogar na exploración espacial e que o vai diferenciar do
  Hubble ou do James Webb?
]

#figure(
    image("/revistas/006/imaxes/ENTREVISTA_BEGOÑA_3.jpg"),
    caption: [
        Foguete Falcon Heavy de SpaceX, cargando o telescopio espacial Nancy
        Grace Roman. Fonte: NASA/Joel Kowsky.
    ]
)

Teño a sorte de seguir traballando no Webb co instrumento de guía, pero tamén de
poderme unir ao equipo doutro telescopio destacado da NASA -- o Nancy
Grace Roman. Encargueime da proba fría dos instrumentos de Roman e estou
encargada das operacións do seo instrumento de guía. Este telescopio pode facer
imaxes do Universo máis de 100 veces máis amplas das que poden facer Hubble
ou Webb -- isto vai dar unha vista panorámica do Universo para poder entender,
con esta primeira sondaxe, mirando a distribución de galaxias, estrelas, etc., en distintas
épocas, pode ser algo que chamamos enerxía escura e materia escura, que
xuntas constitúen o 95% do Universo que inda non sabemos o que é. Podemos ver o
efecto que teñen no que observamos -- por exemplo a enerxía escura causa que o
noso universo se expanda cada vez mais rápido, inda que pode que esa velocidade
de expansión fose distinta antes -- ultimamente esas dúas compoñentes
determinan o futuro deste universo.

Roman pode tamén encontrar miles de planetas novos arredor doutras estrelas
ou incluso aqueles que foran expulsados dun sistema solar e vaian ‘flotando’ no
espazo -- isto vai ser moi importante nesta procura dun planeta que se poida
parecer ao noso e que quizais poida albergar vida.

#Pregunta[
  Mirando ao futuro, que cres que vai marcar máis a axenda espacial nos
  próximos anos: as misións non tripuladas, os telescopios ou satélites, ou
  as misións de exploración humana como a recentemente presentada misión lunar do
  2026?
]

A axenda espacial da NASA ten agora un foco importante na volta á Lúa co
programa Artemis -- esta vez para quedarnos alí, extraer minerais e outros
recursos da Lúa e aprender como viaxar a planetas mais afastados como Marte, que
son viaxes longas para os humanos e sen a protección da atmosfera terrestre.

Pero segue avanzando tamén na parte científica con distintos telescopios
espaciais observando o Sol, planetas e lúas no noso sistema solar e tamén fóra
-- por exemplo xa se está empezando o traballo de definición inicial do
seguinte gran telescopio -- o Telescopio de Mundos Habitables, no que teño a
sorte de empezar a participar un pouco no seu instrumento de guía. Este novo
telescopio combinará o coñecemento de Webb cun espello moi grande feito de
espellos máis pequenos e con instrumentos avanzados, un deles un avance baseado
en Roman dun coronógrafo (un instrumento que pode tapar a luz da estrela para
buscar planetas arredor) -- neste caso, como o di o nome do telescopio,
teremos planetas candidatos que xa pensamos que poderían ter unha
atmosfera que mostre compoñentes onde a vida se poida dar (auga líquida,
dióxido de carbono, metano, etc), inda que non saibamos como chegar a
eses planetas a tantos miles de anos luz de nós, ou se a vida estará nos seus
inicios ou non.

Poder viaxar no espazo máis rápido do que podemos agora vai ser tamén unha área
de investigación no futuro -- e tamén poder facelo máis ecoloxicamente e en
paralelo aprender a coidar do noso planeta mellor.

#Pregunta[
  Gustaríame saber cal é a túa valoración persoal da cultura científica a ambos
  os lados do Atlántico. Sempre se pensa nos EUA como unha gran potencia
  científica, sobre todo na súa ambición dende a Carreira Espacial nas décadas
  da Guerra Fría: está Europa ao mesmo nivel de motivación tanto social como
  gobernamental para competir a par en ciencia? Cres que o futuro será de // ese "a par" está ben, en galego pódese usar "ao par" ou
  misións máis internacionais ou que se está perpetuando unha competición entre // "a par", mais non "á par", que o acabo de consultar
  estados?
]

Penso que inda que os EUA é un país adiantado no espazo, outras axencias espaciais
como a Axencia Europea están tamén á cabeza. O futuro é moito máis de
colaboración entre axencias, xa que os proxectos que se buscan son para toda a
humanidade. Por exemplo, o telescopio Webb é unha colaboración da NASA, ESA e
CSA (Axencia Espacial Canadiense). O telescopio Roman ten contribucións europeas e colaboracións coa Axencia
Espacial Xaponesa. Os científicos que traballan no Webb, no Roman, no Hubble
pertencen a colaboracións internacionais de todo o mundo.

#Pregunta[
  Para ir finalizando, non quería deixar pasar a oportunidade de reivindicar o
  papel das científicas nos postos de mando, pódese falar de igualdade real a
  día de hoxe nos despachos dos centros de control? Ademais, agradeces a teu
  pai o interese pola lectura e polo mundo, como axudou a neutralidade de
  xénero na túa casa á hora de escoller unha carreira científica?
]

Sí, é moi importante que haxa esa igualdade entre homes e mulleres --
principalmente que calquera muller poida traballar no que lle guste e poida dar
toda a súa contribución. Está demostrado en moitas empresas que ter unha
variedade en todos os niveis é moi beneficioso porque pensamos de forma
distinta e pódense atacar problemas e realizar cousas mellor así.

E sempre agradecerei ao meu pai, efectivamente, que nos educou e animou por igual
a estudar, traballar e esforzarnos e en dar o mellor posible de nós, sen perder
a humildade.

Hai moitas carreiras difíciles de por si e a vida sempre nos dá retos en
calquera cousa que pensemos facer. Non hai necesidade de poñerlles máis retos
ás mulleres nin nada máis bonito que deixar que todas as nenas e nenos
poidan cumprir os seus soños.

#Pregunta[
  Para despedirnos, poderías deixar un consello ás futuras físicas e físicos, que
  tomarán a remuda na investigación e divulgación da ciencia?
]

Que teñan confianza neles mesmos, que non teñan medo aos cambios e poidan
apreciar as oportunidades que xurdan no seu camiño -- e que sigan aprendendo e
traballando para que cando xurdan esas oportunidades estean preparados para
tomalas. Aconsello ter contactos e colaboracións internacionais para
aprender ou entender como se fan as cousas noutros sitios. É a importancia da
divulgación e poder explicar a todos aquilo no que se traballa.

Tamén que a vida nunca vai exactamente como pensamos e planeamos. Todos temos
días ou semanas que non foron como desexabamos, pero non hai que deixarse
desanimar, que sempre veñen outros mellores e aprendemos moito dos que non foron
exactamente como quixemos.

E non esquecer de intentar ser boas persoas e de apreciar o camiño e todo o
que encontraremos nel -- cando se mira para atrás dámonos conta de moitas
cousas a gozar no día a día.
