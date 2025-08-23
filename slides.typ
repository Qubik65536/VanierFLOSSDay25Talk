#import "@preview/polylux:0.4.0": *
// #import "@preview/friendly-polylux:0.1.0" as friendly
#import "friendly.typ" as friendly
#import "icons/icons.typ"

#import friendly: titled-block

#show: friendly.setup.with(
  short-title: [Free/Libre and Open Source Software: How to get started?],
  logo: [#box(image("images/logo.png", width: 2em))]
)

#set text(size: 18pt, font: "IBM Plex Serif")
#show raw: set text(font: "Monaspace Krypton")
#show math.equation: set text(font: "IBM Plex Math")

#friendly.title-slide(
  title: [
    = Free/Libre and Open Source Software:
    #text(size: 48pt)[How to get started?]
  ],
  speaker: [Qian Qian (\@Qubik65536)],
  conference: [
    Vanier FLOSS Day 25 \
    Tuesday, October 14#super[th], 2025\
    Montreal, Quebec, Canada
  ],
  speaker-website: "https://qubik.top", // use `none` to disable
  slides-url: none, // use `none` to disable
  qr-caption: text(font: "Monaspace Radon")[Get these slides],
  logo: [
    #align(left)[
      #stack(
        spacing: 0.5em,
        text(size: 8pt)[
          Content licensed under Creative Commons *Attribution-NonCommercial-NoDerivatives 4.0* International License.
        ],
        text(size: 18pt)[
          #stack(
              dir: ltr,
              spacing: 0.25em,
              box(image("images/logo.png", width: 2.1em)),
              h(1fr),
              icons.cc,
              icons.cc-by,
              icons.cc-nc,
              icons.cc-nd
          )
        ]
      )
    ]
  ],
)

// #slide[
//   = My first slide
//   With some maths: $x^2 + y^2 = z^2$

//   And some code: `Typst *rocks*!`

//   #titled-block(title: [A block])[
//     Some important content
//   ]
// ]

#slide[
  #show: friendly.focus

  #text(size: 36pt)[*Remember:*]
  
  1. It's not just about the code.
  2. It doesn't have to be big.
]

#slide[
  = Why contribute?

  - Help improving the software —— that *you* are using.
  - Learn new skills & Gain experience.
    - Code
    - Documentation/Writing
    - Design
    - Testing
    - Community Building
    - Team Work
  - Meet new people & Make friends.
  - Build your portfolio.
  - Get recognized or even paid.
  - Have fun!
]

#slide[
  #show: friendly.focus

  *"How do I start contributing?"* \
  based on _my own_ experiences
]

#slide[
  #align(horizon + center)[
    #text(size: 36pt)[*"What can I do?"*]
  ]
]

#slide[
  = What kind of contributions can you make?

  #align(horizon + center)[
    #text(size: 56pt)[*>`code_`*]
  ]
]

#slide[
  #show: friendly.focus

  #text(size: 36pt)[*Remember:*]
  
  1. It's *not* just about the code.
  2. It *doesn't* have to be big.
]

#slide[
  = What kind of contributions can you make?

  #align(horizon + center)[
    #text(size: 36pt)[*>`code_`*]
  ]

  #place(
    move(dx: 12em, dy: -7em)[
      #text(size: 28pt)[bug reports]
    ]
  )
  #place(
    move(dx: 12em, dy: 3.2em)[
      #text(size: 28pt)[documentation]
    ]
  )
  #place(
    move(dx: 30em, dy: -3.6em)[
      #text(size: 28pt)[beta testing]
    ]
  )
  #place(
    move(dx: 32em, dy: 1.6em)[
      #text(size: 28pt)[translation]
    ]
  )
  #place(
    move(dx: 26em, dy: 6.4em)[
      #text(size: 28pt)[design]
    ]
  )
  #place(
    move(dx: 3em, dy: -2.1em)[
      #text(size: 28pt)[marketing]
    ]
  )
  #place(
    move(dx: 3em, dy: 7.5em)[
      #text(size: 28pt)[community support]
    ]
  )
  #place(
    move(dx: 28em, dy: -8.5em)[
      #text(size: 28pt)[event organization]
    ]
  )
]

#set text(size: 24pt, font: "Monaspace Radon")
#friendly.last-slide(
  title: text(font: "IBM Plex Serif")[That's it!],
  project-url: "https://github.com/Qubik65536/VanierFLOSSDay25Talk",
  qr-caption: [ The Slide on GitHub],
  contact-appeal: [Get in touch #emoji.hand.wave],
  logo: [#box(image("images/logo.png", width: 3em))],
  // leave out any of the following if they don't apply to you:
  email: "me@qubik.top",
  website: "https://qubik65536.top",
  github: "Qubik65536",
)
