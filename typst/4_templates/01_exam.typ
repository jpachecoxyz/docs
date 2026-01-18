#import "jp_exam.typ": *

#show: conf.with(exam-id: [0000-0001])

#title-page(
  subject: [Curso de PLC basico],
  level: [Basico],
  // paper: [Paper 3],
  date: [2 Jul 2026],
  time-limit: [55 minutos],
)

#mcq(
  [*En un diagrama Ladder, ¿qué representa normalmente un contacto normalmente abierto (NO)?*],
  [Un elemento que conduce corriente cuando la condición es falsa],
  [Un elemento que conduce corriente cuando la condición es verdadera],
  [Una bobina de salida],
  [Un temporizador],
)

#mcq(
  [*¿Cuál es la función principal de un PLC en un sistema industrial?*],
  [Convertir energía eléctrica en energía mecánica],
  [Supervisar únicamente variables analógicas],
  [Controlar procesos mediante lógica programable],
  [Proveer energía a sensores y actuadores],
)

#mcq(
  [*En Ladder, ¿qué sucede cuando una bobina ( ) está energizada?*],
  [Se abre el circuito],
  [Se activa una salida o una marca interna],
  [Se reinicia el PLC],
  [Se desactiva el renglón],
)

#mcq(
  [*¿Qué instrucción Ladder se utiliza comúnmente para crear un retardo a la conexión?*],
  [CTU],
  [TON],
  [TOF],
  [MOV],
)

#mcq(
  [*¿Cuál de los siguientes dispositivos es típicamente una entrada digital para un PLC?*],
  [Válvula proporcional],
  [Sensor de proximidad],
  [Variador de frecuencia],
  [Motor trifásico],
)

#saq(
  [*Un sistema automatizado utiliza un PLC para controlar una banda transportadora con botones de arranque y paro, sensores de presencia y un motor.*],
  (
    question-context: [*El sistema debe operar de forma segura y confiable durante turnos prolongados.*],
    question: [*Menciona dos ventajas de usar lógica Ladder para programar sistemas industriales.*],
    points: 2,
    lines: 3,
  ),
  (
    question: [*Explica cómo funcionaría la lógica de arranque y paro de un motor usando contactos y bobinas en Ladder.*],
    points: 4,
    lines: 5,
  ),
)

#saq(
  [*Un PLC controla un tanque que se llena automáticamente usando un sensor de nivel alto y uno de nivel bajo.*],
  (
    question: [*¿Qué función cumple el sensor de nivel bajo dentro de la lógica de control?*],
    points: 2,
    lines: 3,
  ),
  (
    question: [*Describe un posible fallo si el sensor de nivel alto deja de funcionar y cómo podría mitigarse en el programa.*],
    points: 4,
    lines: 5,
  ),
)
