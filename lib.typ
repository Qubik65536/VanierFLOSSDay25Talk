#import "@preview/polylux:0.4.0": *
#import "@preview/tiaoma:0.3.0"

#import "icons/icons.typ"

#let accent1 = rgb("56728B")
#let accent2 = rgb("56728B")
#let accent3 = rgb("56728B")
#let accent4 = rgb("56728B")

#let get-in-touch(
  title: [Get in touch!],
  email: none,
  website: none,
  github: none,
) = {
  let rows = (
    if email != none {
      (icons.email, email)
    } else { () },
    if website != none {
      (icons.www, website)
    } else { () },
    if github != none {
      (icons.github, link("https://github.com/" + github)[#github])
    } else { () },
  ).flatten()

  title
  grid(columns: 2, column-gutter: .5em, row-gutter: 1em, align: horizon, ..rows)
}

#let titled-block(title: [], body, ..kwargs) = {
  stack(
    dir: ttb,
    spacing: 5pt,
    text(
      size: .8em,
      fill: accent1,
      sym.triangle.small.stroked.r + sym.space + title,
    ),
    block(
      inset: 10pt,
      width: 100%,
      stroke: 2pt + accent1.lighten(50%),
      ..kwargs.named(),
      body,
    ),
  )
}

#let setup(
  body,
  short-title: [],
  short-speaker: none,
  logo: none,
) = {
  set page(
    paper: "presentation-16-9",
    margin: (top: 1em, bottom: 3em, left: 1em, right: 1em),
    footer: {
      set align(bottom)
      show: pad.with(bottom: 0.75em)
      set text(size: 12pt, font: "IBM Plex Serif", fill: gray)
      if (logo != none) {
        logo
        h(1fr)
      }
      short-title
      h(1fr)
      if (short-speaker != none) {
        short-speaker
        h(2fr)
      }
      toolbox.slide-number
    },
  )
  show heading.where(level: 1): underline.with(
    background: true,
    stroke: (thickness: .3em, paint: accent2.lighten(50%), cap: "round"),
    evade: false,
    extent: .2em,
  )
  show heading: set block(below: 1em)

  body
}

#let title-slide(
  title: [],
  speaker: [],
  speaker-website: none,
  conference: [],
  slides-url: none,
  qr-caption: [these slides],
  logo: auto,
) = slide({
  set page(margin: 0pt, footer: none)
  set align(horizon)
  grid(
    columns: (25%, 75%),
    rows: (100%,),
    gutter: 1em,
    grid.cell(
      inset: (top: 2em, bottom: 1em, left: .5em),
      align: right,
      {
        show image: set block(spacing: 0pt)

        if slides-url != none {
          toolbox.side-by-side(
            {
              show: rotate.with(-10deg)
              set text(size: .6em)
              qr-caption
              sym.space
              icons.right-arrow
            },
            {
              set image(width: 100%)
              tiaoma.barcode(
                slides-url,
                "QRCode",
                options: (fg-color: accent2, bg-color: none),
              )
            },
          )
        }

        v(1fr)
        if logo == auto {
          rect(width: 100%, height: 3em)[
            #set text(size: .3em)
            (specify `logo:` in `title-slide` to replace this by your logo, or
            set it to `none` to show nothing)
          ]
        } else if logo == none {
          // do nothing
        } else {
          logo
        }
      },
    ), grid.cell(fill: accent1, inset: 1em, align: left)[
      #set text(fill: white)
      #set align(bottom)
      #title

      #v(1cm)

      #smallcaps(conference)

      #v(1cm)

      #speaker \
      #if speaker-website != none {
        icons.www-white
        sym.space.nobreak
        link("https://" + speaker-website)[#speaker-website]
      }
    ]
  )
})

#let focus(body) = context {
  set page(
    header: none,
    fill: accent1,
    margin: (top: 3.5em, bottom: 3.5em, left: 1em, right: 1em)
  )
  set text(fill: white, size: 1.5em)
  set align(horizon + center)
  body
}

#let last-slide(
  title: [],
  project-url: none,
  qr-caption: [],
  contact-appeal: [Get in touch!],
  logo: none,
  ..args,
) = slide({
  set page(
    margin: (top: 1em, bottom: 3.5em, left: 1em, right: 1em),
    footer: {
      if (logo != none) {
        set align(bottom)
        show: pad.with(bottom: 0.75em)
        set text(size: 12pt, font: "IBM Plex Serif")
        stack(
          dir: ltr,
          spacing: 0.5em,
          stack(
            spacing: 0.5em,
            text[Content licensed under Creative Commons *Attribution-NonCommercial-NoDerivatives 4.0* International License.],
            stack(
              dir: ltr,
              spacing: 0.25em,
              icons.cc,
              icons.cc-by,
              icons.cc-nc,
              icons.cc-nd
            )
          ),
          h(1fr),
          logo
        )
      } else {
        none
      }
    }
  )

  heading(level: 1, title)

  v(1fr)

  grid(
    columns: (2fr, 5fr),
    gutter: 2em,
    align: top,
    if project-url != none {
      set image(width: 100%)
      tiaoma.barcode(
        project-url,
        "QRCode",
        options: (fg-color: accent2, bg-color: none),
      )
      show: rotate.with(5deg)
      set text(size: .6em)
      icons.up-arrow
      qr-caption
    },
    get-in-touch(title: contact-appeal, ..args.named()),
  )

  v(1fr)
})
