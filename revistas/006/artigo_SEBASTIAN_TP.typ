#import("/estilo.typ"): *

#let e = text(box($"e"$))
#let dd = text(box($"d"$))
#let viel = text(box($e^a_(#h(0.5em) mu)$))
#let vieli = text(box($e^mu_(#h(0.5em) a)$))
#let biel = text(box($e^b_(#h(0.5em) nu)$))
#let bieli = text(box($e^nu_(#h(0.5em) b)$))
#let levicivita = text(
    box(
        $1/2 g^(mu lambda)
        (partial_alpha g_(lambda beta)
        + partial_beta g_(alpha lambda)
        + partial_lambda g_(alpha beta))$
    ),
)
#let riemann = text(
    box(
        $partial_alpha Gamma^mu_(#h(1em) nu beta)
        -partial_beta  Gamma^mu_(#h(1em) nu alpha)
        +Gamma^mu_(#h(1em) lambda alpha)
         Gamma^lambda_(#h(1em) mu nu)
        -Gamma^mu_(#h(1em) lambda beta)
         Gamma^lambda_(#h(1em) nu alpha)$
    ),
)

#show: Artigo.with(
    titulo: [Teorías de Lovelock],
    autoria: [Sebastián Táboas Pazo],
    tema: "DIVULGACIÓN"
)

#show: columns

Todas nós de cativas soñabamos con ir á universidade e cursar o grao de  física
e estudar sobre buratos negros, sobre teoría de cordas ou sobre QFT e física de
partículas embelecados polos vídeos de divulgación que nos flipaban. Talvez
sexa un pouco decepcionante entrar en física e atoparte con que vas pasar un
ano enteiro repasando a física que te ensinaron no instituto e facendo mil
materias de matemáticas para finalmente esperar até o teu último ano para
estudar as cousas que tanta ilusión te facían.

O certo é que todos eses obxectos están moi afastados do currículo elemental
dun egresado e requiren moitísimos estudos preliminares, empezando polos
métodos matemáticos e rematando polas materias de QFT e gravitación (e de
momento aínda non escoitei algo como _SUSY_ ou _string theory_). O máis cerca
que estiven de teorías tan pomposas son as teorías de Lovelock (traballo
optativo da materia de gravitación) que refire unha extensión da Relatividade
Xeral (RX) de Einstein para $D$ dimensións. No presente escrito pretenderase
dar unhas nocións xerais sobre estas como tamén abordar moi brevemente os
principais resultados.

== Preliminares

Adentrarse no manexo completo das teorías de Lovelock require de bastante
álxebra tensorial e xeometría diferencial, no momento de preparar o traballo
orixinal ao que se debe este resumo foron vitais os libros de _Geometria
Riemanniana_ de M. do Carmo e _Tensors, Differential Forms, and Variational
Principles_ de D. Lovelock e H. Rund. Se se me permiten as palabras malsoantes,
estas matemáticas son vitais para traballar co espazotempo $(cal(M),g,Gamma)$
que nas teorías de Lovelock é unha $cal(M)$ variedade pseudo-Riemann-Cartan
afinmente conectada libre te torsión. A calquera persoa que estudara
gravitación algunhas destas palabras deberíanlle soar, en primeiro lugar unha
variedade diferencial é un espazo ao que se lle pode asociar un difeomorfismo
($"diff"(cal(M))$), se esta ten unha métrica *g* de signatura $(p,q)$ dicimos
que é *pseudoriemaniana*; que sexa afinmente conectada indícanos que $cal(M)$
está dotada de conexión $Gamma$, o apelido Cartan na variedade dinos que a
conexión é compatible coa métrica e, por último, "libre de torsión" indica que
a conexión é simétrica nos índices inferiores. Isto definímolo así para que as
traxectorias críticas (as máis "curtas") e as traxectorias autoparalelas (as
máis "rectas", que manteñen un vector sen o torsionar ao longo do transporte)
coincidan e a nosa álxebra redúcese á estudada na materia de gravitación: os
símbolos de Cristoffel coinciden coa conexión de Levi-Civita (@ec:sebas:1).

$
    Gamma^(mu)_(#h(1em)alpha beta) = levicivita
$ <ec:sebas:1>

$
    =>
    {
        mat(
            delim: #none,
            T^(sigma)_(#h(0.7em)mu nu) =&
                Gamma^(sigma)_(#h(1em)mu nu)
                - Gamma ^(sigma)_(#h(0.7em)nu mu) equiv 0 ;
            R^(mu)_(#h(0.7em)nu alpha beta) =&
                partial_alpha Gamma^mu_(#h(0.7em) nu beta)
                -partial_beta  Gamma^mu_(#h(0.7em) nu alpha);
                +&Gamma^mu_(#h(0.7em) lambda alpha)
                 Gamma^lambda_(#h(0.7em) mu nu)
                -Gamma^mu_(#h(0.7em) lambda beta)
                 Gamma^lambda_(#h(0.7em) nu alpha)
        )
    }
$ <ec:sebas:2>

$
    R_(mu nu): = R^sigma_(#h(0.7em)mu sigma nu) =\
    partial_sigma Gamma^sigma_(#h(0.7em)mu nu)
        - partial_nu Gamma^(sigma)_(#h(0.7em)mu sigma)
        + Gamma^sigma_(#h(0.7em)lambda sigma)Gamma^lambda_(#h(0.7em)mu nu)
        - Gamma^sigma_(#h(0.7em)lambda nu)Gamma^(lambda)_(#h(0.7em)mu sigma)\
    => R : = R^mu_(#h(0.7em)mu)
$ <ec:sebas:3>

onde @ec:sebas:2 é a torsión e o tensor de Riemann e @ec:sebas:3 o
tensor de Ricci e o escalar de curvatura.

Nótese entón que non estamos fronte a teoría máis xeral posible para estender a
RX a altas dimensión, de desexar maior xeneralidade a extensión da RX a maiores
dimensións sería unha tarefa titánica @CH_supergravities.

No entanto, a xeometría diferencial posúe varias enunciacións posibles, nunha
serie de correspondencias entre 1929 e 1932, Cartan e Einstein, discutían cal
era a linguaxe lexítima da Relatividade (entre outras cuestións derivadas). O
primeiro, non cría que a conexión @ec:sebas:1 fose a adecuada e esixía un nivel máis
profundo de xeneralidade, hai dúas maneiras de lograr isto: mediante unha
conexión máis xeral que se denomina de Palatini ou mediante a formulación dende
o fibrado tanxente (o que se denominaría punto de vista de Cartan). Para non
complicar moito as cousas (poderíanse facer varios artigos falando soamente
desta formulación), limitarémonos a dar unha serie de equivalencias entre a
enunciación típica de Einstein e a de Cartan. Para aquelas persoas que cursaran
Métodos Matemáticos V xa lles soará o espazo tanxente $T_P cal(M)$, pois o
fibrado tanxente $T cal(M)$ é a colección de todos estes espazos sobre todos os
puntos $P$ da variedade. Para relacionar cada unha das formulacións debemos
definir un cambio de base mediante unha aplicación que denominamos
_vielbein_#footnote[Notemos que este se escribe con índices latinos, que
pertencen ao fibrado, e gregos, que pertencen á variedade. Os latinos operan
cos latinos e os gregos cos gregos, nunca se cruzan.] (basicamente é a
jacobiana), $#[*#e:*] cal(M) arrow.r T cal(M)$, que definimos como

$
    (partial z^(a))/(partial x^(mu)) = viel(x)
    =>
    d z^(a) = #e^(a) = viel(x)dif x^(mu).
$ <ec:sebas:4>


A familia ${#viel | a=1,...,D}$ é o que chamamos _vielbein_. A
partir da definición anterior podemos decatarnos inmediatamente dalgunhas
propiedades fundamentais deste obxecto como

$
    viel e^(mu)_(#h(0.7em)b)= delta^(a)_(b),
    quad
    e^(mu)_(#h(0.7em)a) e^(a)_(#h(0.7em)nu) = delta^(mu)_(nu)\
    #[(ortonormalidade do índice)]
$ <ec:sebas:5>

$
    T^(mu nu)= vieli T^(a nu) = vieli bieli T^(a b)\
    #[(transformación entre espazos de tensores)]
$ <ec:sebas:6>



Así podemos escribir unha equivalencia á torsión e ao tensor de Riemann
@ec:sebas:2 tal que

$
    cal(R)^a_b = eta^(a c)e^mu_(#h(0.7em)c) bieli R_(mu nu).
$ <ec:sebas:7>

$
    cal(T)^a  = 1/2viel T^mu_(#h(1em)rho sigma)dif x^rho and dif x^sigma.
$ <ec:sebas:8>

Para tratar todo este asunto en profundidade deberíamos estudar o que se
denomina _álxebra exterior de formas diferencias_, introducir a conexión de
spin (ou de Lorentz) $omega^a_(#h(0.7em) b mu)$ e enunciar os postulados do
vielbein (estes son os que nos permite facer a redución anterior). Bibliografía
útil para asimilalo son os libros xa mencionados.

== Dinámica lagranxiana na RX

Na súa orixe, as famosísimas ecuacións de campo de Einstein

$
    G_(mu nu) = -8pi T_(mu nu),
$ <ec:sebas:9>


onde $G_(mu nu) = R_(mu nu) - 1/2 g_(mu nu) R$ é o tensor de Einstein e $T_(mu
nu)$ o tensor enerxía-momento, dedúcense da acción de Einstein-Hilbert ($S_(E H)$)
cun termo material

$
    cal(S) = cal(S)_(E H) + cal(S)_"material" = \
    integral "d"^D x sqrt(abs(g)) [R/(16pi) + cal(L)_"material"]
$ <ec:sebas:10>


aplicando o principio variacional $delta S=0$. Pretenderemos xeneralizalo, así
a nosa primeira densidade lagranxiana é $cal(L)_(E H) ~ R = g^(mu nu) R^(mu
nu)$. Antes falabamos de puntos de vista de Cartan e de Einstein, ben, estas
dúas perspectivas teñen unha implicación directa á hora de traballar coas
lagranxianas da RX: a perspectiva de Einstein, tamén denominada formalismo
métrico ou de segunda orde, implica unha dependencia de até a segunda derivada
na métrica; mentras que a de Cartan (formalismo de primeira orde) ao estar
enunciada co vielbein só ten dependencia nas primeiras derivadas#footnote[Isto
débese a un resultado fundamental que non se introduciu que é o lema de
Poincaré, este reza que para toda _p-forma_, como é o vielbein, a súa segunda
derivada anúlase.]. É inmediato pensar que é moito máis doado realizar os
cálculos se só temos primeiras derivadas que se chegamos até o segundo orde:
esta é unha das ventaxas da enunciación dende a tanxente fronte a usual. Se
agora queremos escribir a acción EH anterior co vielbein teríamos

$
    cal(S) =
    integral
    epsilon_(a b c d)(alpha cal(R)^(a b) e^c e^d + beta e ^a e^b e^d)
$ <ec:sebas:11>

onde se suprimiron (para quen saiba de álxebra exterior de formas diferenciais)
os produtos $and$ (_wedge_) e o elemento $epsilon$ é o pseudotensor
completamente antisimétrico de Levi-Civita, que é un pseudotensor invariante
($dd epsilon=0$). Nótese que non aparece ningún diferencial porque estos están
integrados na contracción dos vielbein como se indica en @ec:sebas:4.

A idea sería agora escribir lagranxianas neste formalismo para $D>4$ nas que
podamos aplicar o principio variacional da acción e así calcular ecuacións de
campo de Einstein-Lovelock en altas dimensións.

== Accións de Lovelock

Entre 1970 e 1971 David Lovelock @Lovelock-1970 @Lovelock-1971 enunciou
unha serie de teoremas que lle levarían a concluír unha expresión xeral para a
densidade lagranxiana da RX libre de torsión en $D$ dimensións. Enunciado a
machete o resultado final reza

#quote(
    block: true,
)[
    En ausencia de torsión, a acción máis xeral para a gravidade
    $cal(S)(e,omega)$ en $D$ dimensións invariante baixo transformacións locais
    de Lorentz é da forma

    $
        cal(S)_D (e, omega) =
        kappa integral_cal(M)
        sum_(p=0)^[D\/2] a_p cal(L)_p^D
    $ <ec:sebas:12>

    onde $a_p$ é unha constante arbitraria e a lagranxiana vén descrita por

    $
        cal(L)^D_p =
        epsilon_(a_1 dots a_D)
        cal(R)^(a_1 a_2)
        dots
        cal(R)^(a_(2p - 1) a_(2p))
        e^(a_(2p+1))
        dots
        e^(a D).
    $ <ec:sebas:13>
]

Coa definición dunha acción está claro o que temos que facer para desentrañar
toda a súa información dinámica: aplicar o principio variacional. Se variamos a
@ec:sebas:12 respecto de $e^a$ e $omega^(a b)$ temos unha expresión compacta da
forma

$
    delta cal(S)_D =
    integral
    (delta e^a cal(E)_a + delta omega^(a b) cal(E)_a b) = 0
$ <ec:sebas:14>

onde está claro que os termos $cal(E)_a$ e $cal(E)(a b)$ débense anular
simultaneamente para satisfacer que $delta cal(S)_D = 0$. Se fixeramos os
cálculos varacionais con calma, chegaríamos ás seguintes expresión para os
termos $cal(E)$

$
    cal(E)_a =
    sum_(p=0)^[(D-1)/2]
    a^((p))(D - 2p) cal(E)^p_a = 0
$ <ec:sebas:15>

$
    cal(E)_(a b) =
    sum_(p=0)^[(D-1)/2]
    a^((p))p(D - 2p) cal(E)^p_(a b) = 0
$ <ec:sebas:16>

$
    cal(E)_a^((p)) := epsilon_(a c_1 dots e_(D-1))
        cal(R)^(c_1 c_2)
        dots
        cal(R)^(c_(2p-1) c_(2p))
        e^(e_(2p+1))
        dots
        e^(c_(D-1))
$ <ec:sebas:17>

$
    cal(E)_(a b)^((p)) := &epsilon_(a b c_1 dots e_(D-1))
        cal(R)^(c_1 c_2)
        dots
        cal(R)^(c_(2p-3) c_(2p-2))\
        &e^(e_(2p+1))
        cal(T)^(c_(2p-1) c_(2p))
        dots
        e^(c_(D-2))
$ <ec:sebas:18>


A expresión @ec:sebas:16 é de verificación trivial xa que a torsión é nula,
logo, o termo definido en @ec:sebas:18 sempre se anula por ter un termo de
torsión. Para @ec:sebas:15 non pasa e tense que tratar cada caso concreto, no entanto,
ambas condicións son polinomios de $cal(R)_(a b)$ así que se podería atopar
algunha combinación concreta baixo a que tanto @ec:sebas:15 como @ec:sebas:16
se anulen sen impoñer restricións sobre a torsión. Este resultado válenos para
construír as ecuacións dinámicas $forall cal(S)_D$ de Lovelock.

Se estudamos a nosa acción para $D=5$ obtemos o que se denomina gravidade de
Einstein-Gauss-Bonnet (EGB) onde aparece un termo engadido na acción que é
coñecido como densidade de Gauss-Bonnet-Lanczos (GBL)

$
    cal(S)_5 = kappa
    integral_cal(M) epsilon_(a b c d f)
    (
        a_2 cal(R)^(a b) cal(R)^(c d) e^f\
        + a_1 cal(R)^(a b) e^c e^d e^f
        + a_0 e^a e^b e^c e^d e^f
    )

$ <ec:sebas:19>

$
    = kappa
    integral_cal(M)
    sqrt(abs(g))[alpha(G B L) + 4R - 8Lambda_5]dd^5x
$ <ec:sebas:20>

na que escollemos as constantes $a_1,a_0$ baixo unhas certas asuncións
@Gauss_Bonnet_2022. Como para calquera outro caso aparece naturalmente o termo
cosmolóxico (o que é unha gran vantaxe teórica), ademais notemos a equivalencia
desta acción coa usual acción de Einstein-Hilbert @ec:sebas:11 con tan só
escoller $alpha=0$. Logo, se queremos estudar a dinámica desta teoría da
gravidade basta aplicar @ec:sebas:15 e @ec:sebas:16 e teríamos as ecuacións de
campo

$
    epsilon_(a b c d f)
    (
        alpha cal(R)^(b c) cal(R)^(d f)
        &+ 2 cal(R)^(b c) e^d e^f\
        &- (Lambda_5)/3 e^b e^c e^d e^f
    )
    = 0
$ <ec:sebas:21>

$
    epsilon_(a b c d f)
    (
        2 alpha cal(R)^(c d) cal(T)^c
        + 2 cal(T)^c e^d e^f
    )
    = 0
$ <ec:sebas:22>

A @ec:sebas:22 deixa explícita a torsión (algo que non se atopa na
formulación EH), no entanto, o teorema de Lovelock esixe que a acción sexa
libre torsión, porén @ec:sebas:22 é trivial con $cal(T)^a=0$. A
@ec:sebas:21 sería a correspondente ecuación de campo de Einstein para $5D$ con
constante cosmolóxica e a corrección GBL. Poderiamos realizar isto para
calquera dimensión por grande que sexa facendo un pouco de muñeca e atopar
moitos termos novos, xa esta nova gravidade, tema de actualidade, é moito máis
rica que a EH e da que hai un montón de papers destripándoa.

#CrearBibliografia("/revistas/006/bibliografia_SEBASTIAN_TP.bib")
