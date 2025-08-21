#import "@preview/polylux:0.4.0": *
// #import "@preview/friendly-polylux:0.1.0" as friendly
#import "../friendly.typ" as friendly
#import "../icons/icons.typ"

#import friendly: titled-block

#show: friendly.setup.with(
  short-title: [Short title],
  short-speaker: [Short speaker],
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
        spacing: 0.25em,
        text(size: 8pt)[
          Content licensed under Creative Commons *Attribution-NonCommercial-NoDerivatives 4.0* International License.
        ],
        text(size: 18pt)[
          #stack(
              dir: ltr,
              spacing: 0.25em,
              box(image("../images/logo.png", width: 2em)),
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

#slide[
  = My first slide
  With some maths: $x^2 + y^2 = z^2$

  And some code: `Typst *rocks*!`

  #titled-block(title: [A block])[
    Some important content
  ]
]

#friendly.last-slide(
  title: [That's it!],
  project-url: "https://github.com/Qubik65536/VanierFLOSSDay25Talk",
  qr-caption: text(font: "Monaspace Radon")[My project on GitHub],
  contact-appeal: [Get in touch #emoji.hand.wave],
  // leave out any of the following if they don't apply to you:
  email: "foo@bar.org",
  mastodon: "@foo@baz.org",
  website: "bar.org"
)
