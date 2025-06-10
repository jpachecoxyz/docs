#let _ = ```typ
exec typst c "$0" --root "$(readlink -f "$0" | xargs dirname)/./"
⁠```
#set document(title: "Examen de PLC Basico", author: "Javier Pacheco")
#set text(lang: "en")
#outline()
#set heading(numbering: "1.")
#set page(paper: "a4", margin: (x:2cm, y:2cm))
#set text(font: "Iosevka", size: 10pt)
#set par(justify: true, leading: 0.52em)
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(zebra-fill: none)
#codly(fill: yellow.lighten(80%))
#codly(display-name: false)
#heading([Title], outlined: false)

#heading(level: 1)[Primera Seccion.] #label("org87f92d1")
\
#enum(enum.item(1)[#text(weight: "bold", [Cual de las siguientes marcas son fabricantes de PLC:])
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[AllenBradley])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Fanuc.])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Siemes.])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Todas las anteriores.])],
)
\
#enum(enum.item(2)[#text(weight: "bold", [Esta opcion carga la logica del PLC al ordenador para su evaluación:])
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Save])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Download])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Upload])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Close])],
)
\
#enum(enum.item(3)[#text(weight: "bold", [Cuál de los siguientes lenguajes de programación NO es comúnmente utilizado en PLCs]):
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Ladder Diagram (LD)])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Structured Text (ST)])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Python])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Function Block Diagram (FBD)])],
)
\
#enum(enum.item(4)[#text(weight: "bold", [Qué tipo de señal es más común en las entradas digitales de un PLC]):
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Señal analógica de 0-10V])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Señal digital de 24V DC])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Señal de audio])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Señal de red Ethernet])],
)
\
#enum(enum.item(5)[#text(weight: "bold", [En un PLC, qué hace un relé interno (marcador)]):
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Controla directamente un motor])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Almacena un valor lógico (verdadero/falso)])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Convierte señales analógicas a digitales])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Gestiona la comunicación de red])],
)
\
#enum(enum.item(6)[#text(weight: "bold", [Cual de los siguientes es un ejemplo de una salida digital en un PLC:])
#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Encender una lámpara])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Medir la temperatura])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Controlar la velocidad de un motor])#list(marker: [#box(stroke: 0.5pt + rgb(0,0,0), width: 8pt, height: 8pt, align(center, " "))], list.item[Leer un sensor de proximidad])],
)
#pagebreak()
#heading(level: 1)[Segunda Seccion.] #label("org5cee7ac")
#grid(rows: 10cm, columns: 2, gutter: 1fr, [1. Dibuja el paro arranque de un motor en logica LADDER #v(5fr) 2. Programa un timer que este periodicamente contando 30 segundos.],)
