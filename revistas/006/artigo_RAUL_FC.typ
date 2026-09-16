#import("/estilo.typ"): *

#show: Artigo.with(
  titulo: [Aquelas marabillosas ondas de luz evanescentes],
  autoria: [Raúl de la Fuente Carballo],
  tema: "DIVULGACIÓN"
)

#show: columns

O título podería ter sido algo así como "As ondas evanescentes en óptica", pero
sería algo seco, aséptico. Así que optei polo título actual en alusión a unha
serie dos anos 80 do meu agrado, titulada "Aquellos maravillosos años" en
castelán, ou "The wonder years" en inglés, serie que conta a vida dun
adolescente dunha familia americana corrente. Unha boa serie e un bo recordo,
que esvaece na memoria.

Se buscamos o significado de evanescente nun dicionario, atopamos algo como que
se esfuma ou desaparece aos poucos; fai referencia a algo efémero, tenue ou
fugaz. Que sentido pode ter no ámbito da Física? E, concretamente, cando nos
referimos ás ondas? Por razóns obvias voume referir ao campo da óptica, aínda
que tamén son sonadas as ondas evanescentes cuánticas, sobre todo en relación
co efecto túnel @raul_1. Podedes preguntarlle aos profesores de física cuántica
por este efecto, o efecto cuántico análogo ao efecto óptico da reflexión total
frustrada (normalmente esta frase se formula ao revés, non coñezo o porqué).

#figure(
  image("/revistas/006/imaxes/RAUL_FC_1.png"),
  caption: [Representación dunha onda harmónica (esquerda), una onda
  amortecida (centro) e unha onda evanescente (dereita). As frechas continuas
  indican a dirección de propagación das ondas mentres que as frechas
  descontinuas indican a dirección de decrecemento da amplitude das ondas.]
)<im:1>

Cando falamos da luz, falamos de algo que se despraza ou se propaga cunha
velocidade inmensamente grande, $300000$~km/s
no espazo baleiro. As ondas de luz ordinarias son ondas viaxeiras, emerxen
dunha fonte para propagarse polo espazo. No sentido clásico, propáganse como
oscilacións ou vibracións de alta frecuencia dos campos electromagnéticos,
arredor de 1014–1015 Hz. E apáganse, amortécense, cando chegan a obxectos
opacos. Poderiamos dicir que as ondas esvaecen nos obxectos, pero ese non é o
termo que se usa: fálase de ondas amortecidas, xa que son ondas que perden a
súa enerxía; desaparecen ou morren para aumentar a enerxía do medio opaco. En
cambio, as ondas evanescentes prodúcense en medios transparentes onde a enerxía
da luz é conservada, pero chega ao seu fin espacialmente. É dicir, son ondas
que decaen sen perda de enerxía (véxase a @im:1).

O primeiro físico que se decatou da existencia de ondas evanescentes foi I.
Newton @raul_2, pero a súa explicación tardou en darse máis de cen anos. As
ondas evanescentes poden considerarse ondas superficiais, xa que están
localizadas na proximidade dunha superficie que separa dous medios con
diferentes propiedades ópticas. Insistimos: son ondas localizadas, non
viaxeiras, aínda que tamén podemos consideralas como a cola dunha onda
viaxeira. Imos falar do exemplo máis coñecido. 

#figure(
  image("/revistas/006/imaxes/RAUL_FC_2.png"),
  caption: [(a) Reflexión e transmisión parcial de luz. (b) Reflexión total.
  (c) Reflexión total frustrada.]
)<im:2>

Observade o debuxo da @im:2. A luz penetra nun prisma por unha cara e chega a
unha segunda cara incidindo cun ángulo $theta$. Ao tratarse de vidro, se o
ángulo $theta$ é pequeno, hai pouca luz reflectida e a maioría da luz
transmítese cara ao aire cun ángulo de refracción maior ca o de incidencia
(@im:2 a). Isto é así porque o índice de refracción do vidro é maior ca o do
aire. Non obstante, se aumentamos o ángulo de incidencia cara a incidencias
rasantes, a cantidade de luz reflectida aumenta repentinamente ata que, a
partir dun certo ángulo --denominado ángulo crítico--, toda a luz é reflectida
no prisma: non hai luz transmitida cara ao aire (@im:2 b).

Esta é a explicación simple do que sucede, pero hai máis. As ondas corresponden
a un fenómeno continuo. Aínda que estamos acostumados a falar de
refracción/transmisión e reflexión nunha superficie, o fenómeno atinxe á
veciñanza desa superficie. Daquela, no noso exemplo, a onda penetra no aire
pero decae rapidamente (unhas poucas micras como moito no caso da luz) e
continuamente. É dicir, temos unha cola de luz no aire. Esta é unha onda
evanescente, unha onda efémera que esvaece no aire (ou noutro medio).

Este fenómeno que acabamos de describir recibe o nome de reflexión total: un
fenómeno no que a enerxía dunha onda incidente nunha interface entre dous
medios é totalmente reflectida; é dicir, a onda reflectida transporta toda a
enerxía da onda incidente. Significa isto que a cola da onda no segundo medio
--a onda evanescente-- non transporta enerxía, que non hai fluxo de enerxía ao
segundo medio? Pois non temos fluxo, pero temos luz (aínda que moi pouca) no
segundo medio. Temos luz e non fluxo de enerxía? Realmente estas ondas son
misteriosas e, como corolario, marabillosas para un científico.

Imos ver se resolvemos esta trama. Como xa comentamos, a luz corresponde a
oscilacións moi rápidas dos campos electromagnéticos que se propagan a través
do espazo. Os detectores de luz non son sensibles a esas oscilacións tan
rápidas, senón que o que miden son sempre magnitude mediadas no tempo como o
fluxo de enerxía (a irradiancia). Non obstante, podemos considerar, imaxinar e
calcular o que poderiamos chamar fluxo instantáneo. Deste xeito, o que ocorre é
que ese fluxo instantáneo vai variando: ora vai do primeiro ao segundo medio,
ora segue o camiño inverso, pero non existe un fluxo neto cara o aire, e o que
se manifesta é a reflexión total da luz. Pero iso é no estado estacionario, no
transitorio correspondente o inicio da chegada da luz a interface, parte dela a
traspasa a fronteira e forma a cola evanescente que se mantén no tempo.

A proba de que unha onda evanescente ten enerxía é o fenómeno de reflexión
total frustrada. Acheguemos outro prisma ao primeiro, como na (@im:2 c), pero
achegamos moito, a unha distancia de micras. Neste caso, a cola evanescente
contacta con ese terceiro medio e resulta que, como consecuencia da interacción
da luz coas cargas nese medio, parte da luz é transmitida ao segundo prisma,
cousa que é facilmente medible. Frústrase a reflexión total da luz: a onda
evanescente no aire transfórmase nunha onda viaxeira no prisma de saída.

Outro exemplo de ondas evanescentes aparece nas guías de luz. O caso máis
coñecido é a fibra óptica, usada sobre todo para transmisión de datos a grandes
distancias con alta velocidade, pero con outras múltiples aplicacións. As
fibras ópticas son cables flexibles de luz, formados por vidros ou plásticos
transparentes @raul_3. Constan principalmente de dúas partes: un núcleo
interior cilíndrico e un revestimento que o rodea. Tamén posúen unha cuberta
protectora. A característica principal das fibras ópticas é que o índice de
refracción do núcleo é maior ca o do revestimento. Esta característica permite
que a luz quede confinada na fibra e poida propagarse a distancias moi longas.
En fibras ópticas típicas, o diámetro do núcleo varía de 8–10 $upright(mu)$m ata 50–60
$upright(mu)$m, cun revestimento de 125 $upright(mu)$m, aínda que existen fibras de centos de
micras de espesor. Que papel xogan as ondas evanescentes nunha fibra? A maior
parte da luz propágase dentro do núcleo, pero sempre existe unha cola que
penetra no revestimento ata esvaecer dentro del. Poderiamos dicir que son
simplemente unha parte da onda viaxeira que se propaga dentro da fibra, pero
existen razóns para distinguir as partes da onda que se propagan dentro e fóra
do núcleo. En primeiro lugar, descríbense matematicamente de xeito diferente:
dentro do núcleo temos unha función oscilatoria e no revestimento unha función
decaínte. Por outra banda, pódense fabricar dispositivos como acopladores ou
sensores en fibras ópticas nos que a onda evanescente ten un papel esencial. 

Un terceiro tipo de configuración onde aparecen ondas evanescentes é aquel que
contén capas metálicas moi finas. En xeral, a luz e os metais non se levan nada
ben. En condicións normais, cando a luz chega a un metal esta é reflectida na
súa maior parte. Esa é a causa do brillo típico dos materiais metálicos.
Ademais, metais como o aluminio ben pulido úsanse para construír espellos. E
que pasa co resto do sinal que se transmite ao metal? Pois é absorbido moi
rapidamente, de forma que desaparece nunha distancia de decenas de nanómetros.
Podemos concluír que nun metal non se propaga radiación, senón que esta é
amortecida. Salvo que consideremos capas metálicas moi finas; por dicir, cun
espesor inferior a 100 nm. 

#figure(
  image(width: 80%, "/revistas/006/imaxes/RAUL_FC_3.png"),
  caption: [Representación da excitación dun plasmón de superficie 
    mediante luz.]
)<im:3>

En teoría, pódese propagar luz ao longo dunha interface metal/dieléctrico, como
prata/aire, mediante ondas que decaen cara a ambos os medios, pero que se van
atenuando pola absorción no metal. Temos entón unha guía de ondas superficial
--ou de espesor nulo-- a diferenza das guías dieléctricas, que teñen un espesor
mínimo para poder confinar a luz. Tamén existe unha diferenza fundamental entre
as guías dieléctricas e as guías metal/dieléctrico. As primeiras débense á
interacción da luz con electróns ligados nos átomos ou moléculas dos
dieléctricos; as segundas están asociadas á interacción cos electróns libres
presentes no metal na veciñanza da interface. A luz xera unha oscilación
colectiva de electróns libres denominada plasmón de superficie @raul_4 (ver
@im:3). Na práctica úsanse capas metálicas finas para que a luz penetre o
suficiente no metal e chegue á superficie metal/dieléctrico coma unha onda
evanescente cara ambos lados.

Imos xa co último caso que reforza a importancia das ondas evanescentes. Imos
falar da luz que reflicte un obxecto opaco. Para simplificar, consideramos un
feixe colimado (cunha dirección ben definida) que incide sobre o obxecto e que
é reflectido por este. Se o obxecto ten unha superficie plana e está moi
pulida, prodúcese unha reflexión especular; é dicir, o feixe reflectido sae
colimado nunha dirección ben definida, como nun espello. Pero a meirande parte
dos obxectos nin son planos nin están ben pulidos. Nese caso, a onda sae
reflectida en moitas direccións (temos reflexión difusa). Cada unha desas ondas
que sae nunha dirección dada é unha onda harmónica viaxeira e dicimos que o
feixe reflectido é unha superposición de ondas harmónicas viaxeiras. Esas ondas
poden ser recollidas por unha lente converxente para formar unha imaxe do
obxecto. Podemos imaxinar que se a lente é perfecta, a imaxe tamén o é. Pero
non, os especialistas en óptica sabemos ben que hai un límite na perfección da
imaxe: dise que a resolución da imaxe está limitada pola difracción.
Basicamente, podemos dicir que a lente ten unha abertura limitada e non é capaz
de recoller toda a luz reflectida. Pero podemos imaxinar que usamos un
obxectivo de microscopio de gran abertura que colocamos moi preto do obxecto,
de xeito que poida recoller practicamente toda a luz reflectida por unha parte
pequena do obxecto e facer unha imaxe moi boa desa zona. Con todo, aínda
estamos limitados a resolucións da orde da lonxitude de onda da luz. É dicir,
se o obxecto ten detalles de dimensións da lonxitude de onda ou menores, imos
perder información na imaxe. A razón fundamental é que, nese caso, a luz
reflectida non só consta de ondas viaxeiras, senón que tamén inclúe ondas
evanescentes. Esas ondas son creadas por eses detalles tan finos e non van
poder ser recollidas pola lente. Para resumir: podemos explicar o límite de
difracción pola presenza das ondas evanescentes xeradas na reflexión nun
obxecto.

Agora que xa sabemos un pouco máis das ondas evanescentes, podemos
preguntarnos: para que serven? Boa pregunta. Para empezar, vou indicar algúns
exemplos moi concretos: pantallas táctiles, lectores de pegada dixital,
sensores de chuvia na automoción ou sensores de nivel de líquidos. Por exemplo,
nun sensor de pegadas dixitais ilumínase un prisma no que está apoiada a polpa
do dedo. Nas cristas da pegada existe contacto co prisma, producindo luz difusa
(frustración da reflexión total), mentres que nos vales ou sucos non hai
contacto e prodúcese reflexión total da luz cara a un detector, onde se realiza
a imaxe da pegada.

Xa como exemplos máis técnicos están os divisores e acopladores de luz en
fotónica integrada e en fibras ópticas, os sensores plasmónicos por reflexión
total atenuada, os sensores de fibra óptica, a microscopía de alta resolución
ou as pinzas ópticas evanescentes. Nun acoplador de fibra póñense en contacto
dúas fibras ópticas e a penetración da cola evanescente da luz dunha delas pode
facer que se transvase luz dunha fibra a outra. A excitación de plasmóns nunha
capa metálica fina en contacto cun medio externo permite detectar cambios moi
pequenos nese medio (cambios no índice de refracción ou na adsorción
molecular). O confinamento da luz na interface metal/medio externo, con campos
electromagnéticos elevados, fai que este sensor sexa extremadamente sensible ao
que ocorre na contorna desa interface. Por outra banda, a iluminación ou
detección cunha sonda moi fina e moi próxima á superficie dunha mostra permite,
ou ben limitar a excitación á zona do campo evanescente, ou ben obter
información detallada por debaixo do límite de difracción. Finalmente, nas
pinzas ópticas evanescentes úsase o campo evanescente para exercer forzas sobre
partículas nanométricas moi próximas a unha superficie. Para saber máis,
consultade a referencia @raul_5.

A modo de resumo, as ondas evanescentes son ondas localizadas na contorna dunha
superficie que decaen rapidamente sen que haxa perda neta de enerxía. O
fenómeno de reflexión total, a posibilidade de guiar luz en medios dieléctricos
ou nunha interface metal/dieléctrico e a limitación na resolución dunha imaxe
convencional son manifestacións da existencia deste tipo de ondas efémeras.
Efémeras si, pero cunha variedade de aplicacións científicas e tecnolóxicas.

#CrearBibliografia("/revistas/006/bibliografia_RAUL_FC.bib")
