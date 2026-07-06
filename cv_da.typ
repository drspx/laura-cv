//! NOTE: Kræver skrifttyperne FontAwesome 6 og Open Sans for korrekt gengivelse.
//! Kompilér med: typst compile cv_da.typ

#import "@preview/impressive-impression:0.2.1": (
  cv, dot-ratings, make-aside-grid, make-aside-persona, make-main-content-block, make-main-content-block-with-timeline,
  make-pill, theme-helper,
)

#import "utils.typ": fa-icon-factory, fa-icon-factory-stack
#import "theme.typ": theme

#import "@preview/fontawesome:0.6.2": fa-icon

#let name = "María Laura Espinal Bracho"
// ponytail: udskift profile.jpg med dit eget foto, samme filnavn
#let profile-image = image("profile.jpg", fit: "stretch")
#let short-description = [Odontologistuderende & kundeservicemedarbejder]

#let th = theme-helper(theme)
#let iconer-stack = fa-icon-factory-stack(theme)
#let iconer = fa-icon-factory(theme)
#let dot-ratings = dot-ratings.with(
  size: 6.5pt,
  spacing: 3.5pt,
  color-active: th("primary-accent-color"),
  color-inactive: th("faint-text-color").transparentize(65%),
)

#let make-main-content-block = make-main-content-block.with(theme: theme)
#let make-main-content-block-with-timeline = make-main-content-block-with-timeline.with(theme: theme)

// Side 1
#let main-content-1 = [
  == Profil
  #block([
    #set par(justify: true)
    Odontologistuderende med mere end ti års international erfaring inden for kundeservice, salg, restaurationsbranchen og undervisning i Danmark, Sverige og Spanien. Pålidelig, omstillingsparat og vant til at arbejde under pres i et travlt og flersproget miljø.
  ])

  == Uddannelse
  #make-main-content-block-with-timeline(
    ([2025], [2023]),
    "Odontologi",
    supplement: [Universidad de València, Spanien],
    [Studier i tandpleje og mundhygiejne.],
  )
  #make-main-content-block-with-timeline(
    ([2022], [2021]),
    "Business Management (ikke afsluttet)",
    supplement: [BYU–Idaho],
    [Kurser i grundlæggende virksomhedsledelse.],
  )
  #make-main-content-block-with-timeline(
    [2018],
    "Forberedelseskursus til videregående uddannelse",
    supplement: [BYU Pathway Worldwide],
    [Program der forbereder studerende til videregående uddannelse.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2015],
    "Gymnasial eksamen",
    supplement: [Spanien],
    [],
    timeline-line-gap: 0pt,
  )

  == Erhvervserfaring
  #make-main-content-block-with-timeline(
    ([2026], [2025]),
    "Restaurantmedhjælper",
    supplement: [Kina Grill, Hedehusene, Danmark],
    [
      - Modtog kundeordrer via telefon og personligt.
      - Pakkede og leverede ordrer.
      - Tilberedte mad og organiserede varelager.
    ],
  )
  #make-main-content-block-with-timeline(
    ([2023], [2022]),
    "Piñata-maker (selvstændig)",
    supplement: [L&L Piñatas],
    [
      - Designede og fremstillede skræddersyede piñataer efter bestilling.
      - Håndterede kalender, indkommende ordrer og lejlighedsvis levering.
    ],
  )
  #make-main-content-block-with-timeline(
    [2022],
    "Telefonisk kundeservice",
    supplement: [Spanien],
    [Håndterede kundehenvendelser og ordrer via telefon.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2022],
    "Administrativ assistent",
    supplement: [Multas.com, Valencia, Spanien],
    [- Rådgav potentielle kunder om de bedste muligheder for at betale deres bøder.],
  )
  #make-main-content-block-with-timeline(
    [2020],
    "Kundeservice",
    supplement: [Gerege Restaurant, Malmö, Sverige],
    [
      - Modtog ordrer og håndterede betalinger.
      - Betjente kunder personligt og gav anbefalinger.
    ],
  )
  #make-main-content-block-with-timeline(
    [2020],
    "Kundeservice",
    supplement: [McDonald's, Malmö, Sverige],
    [- Modtog kundeordrer, præsenterede menuvalg og leverede ordrer.],
  )
]

#let aside-content-1 = [
  #make-aside-persona(
    name,
    short-description: short-description,
    image: profile-image,
    theme: theme,
  )

  #make-aside-grid(
    theme: theme,
    iconer-stack("map-marker-alt"),
    [Hedekæret 87, 2. th, Danmark],
    iconer-stack("phone"),
    [#link("tel:+4593840991", "+45 93 84 09 91")],
    iconer-stack("at"),
    [#link("mailto:mari_lau_541@hotmail.com", "mari_lau_541@hotmail.com")],
    iconer-stack("car"),
    [Kørekort, type B],
  )

  == Sprog
  #make-aside-grid(
    columns: 2,
    rows: 14pt,
    align: (horizon + left, horizon + right),
    theme: theme,
    [Spansk (modersmål)],
    dot-ratings(5, 5),
    [Engelsk (flydende)],
    dot-ratings(5, 5),
    [Dansk (B)],
    dot-ratings(3, 5),
  )

  == Kompetencer
  #make-aside-grid(
    columns: 2,
    theme: theme,
    iconer("headset"),
    [Kundeservice],
    iconer("cash-register"),
    [Salg & kasse],
    iconer("utensils"),
    [Restaurationsservice],
    iconer("chalkboard-teacher"),
    [Undervisning],
    iconer("boxes-stacked"),
    [Varelager],
    iconer("broom"),
    [Rengøring],
  )

  == Styrker
  #make-aside-grid(
    columns: 2,
    theme: theme,
    iconer("comments", solid: true),
    [Kommunikation],
    iconer("people-group"),
    [Teamwork],
    iconer("shuffle"),
    [Omstillingsparathed],
    iconer("clock"),
    [Arbejde under pres],
  )
]

// Side 2
#let main-content-2 = [
  == Erhvervserfaring (fortsat)
  #make-main-content-block-with-timeline(
    ([2020], [2019]),
    "Rengøringsassistent",
    supplement: [ChemDry, København, Danmark],
    [- Rengjorde tæpper og overflader for private hjem, kontorer og store butikskæder.],
  )
  #make-main-content-block-with-timeline(
    [2019],
    "Game Master",
    supplement: [Fox in a Box, Malmö, Sverige],
    [
      - Modtog kunder og forklarede escape room-spillene med ledetråde.
      - Sikrede at spillerne forstod reglerne, og at spillene fungerede korrekt.
    ],
  )
  #make-main-content-block-with-timeline(
    [2018],
    "Sælger",
    supplement: [Italian Village],
    [- Kundekontakt, salg og visuel præsentation af pesto, parmesan og andre produkter.],
  )
  #make-main-content-block-with-timeline(
    ([2018], [2015]),
    "Engelsklærer",
    supplement: [Madrid & Valencia, Spanien],
    [
      - Underviste voksne og børn med henblik på officielle eksaminer eller personlig læring.
      - Tilpassede vejledningen til den enkelte og koordinerede en voksende gruppe af elever.
    ],
  )
  #make-main-content-block-with-timeline(
    [2017],
    "Receptionist",
    supplement: [Sol Hostel, Madrid, Spanien],
    [- Modtog gæster og håndterede ind- og udtjekning i receptionssystemet.],
  )
  #make-main-content-block-with-timeline(
    [2016],
    "Restaurantkasserer & køkkenmedhjælper",
    supplement: [La Familia Pizzeria, Castellón, Spanien],
    [
      - Rådgav kunder om menuvalg og håndterede betalinger.
      - Hjalp til i køkkenet med at lave pizzaer.
    ],
  )
  #make-main-content-block-with-timeline(
    [2016],
    "Butikssælger",
    supplement: [Locutorio Samira, Castellón, Spanien],
    [
      - Fordelte kunder mellem arbejdsstationerne.
      - Rådgav kunder om køb af det rette udstyr.
    ],
  )
  #make-main-content-block-with-timeline(
    ([2015], [2014]),
    "Tjener",
    supplement: [A Babor Restaurant, Valencia, Spanien],
    [
      - Imødekom kunders ønsker og opbyggede en fast kundekreds.
      - Arbejdede i baren med tilberedning af drikkevarer og kaffe.
      - Betjente ca. 300 gæster om dagen i højsæsonen under tidspres.
    ],
  )

  == Frivilligt arbejde
  #make-main-content-block-with-timeline(
    ([2018], [2015]),
    "Frivillig ungdomsleder",
    supplement: [Jesu Kristi Kirke af Sidste Dages Hellige, Spanien],
    [
      - Planlagde undervisning og aktiviteter til støtte for unge voksnes (18–30) personlige udvikling.
      - Koordinerede med andre ledere om afvikling af aktiviteterne.
    ],
  )
  #make-main-content-block-with-timeline(
    [2017],
    "Ungdomslejr-vejleder",
    supplement: [Jesu Kristi Kirke af Sidste Dages Hellige, Segovia, Spanien],
    [- Planlagde undervisning og aktiviteter og tog sig af de unge deltageres (14–17) trivsel.],
  )
  #make-main-content-block-with-timeline(
    ([2017], [2016]),
    "Frivillig missionær",
    supplement: [Jesu Kristi Kirke af Sidste Dages Hellige, Málaga, Spanien],
    [- Vejledte, støttede og hjalp mennesker i deres personlige udvikling.],
  )

  #v(1fr)
  #align(right, text(name, fill: th("secondary-text-color"), weight: "semibold"))
]

#let aside-content-2 = [
  #make-aside-persona(
    name,
    short-description: short-description,
    theme: theme,
  )

  == Brancher
  #let pill = body => make-pill(body, theme)
  #pill("Hotel & restauration")
  #pill("Detailhandel")
  #pill("Restauranter")
  #pill("Kundeservice")
  #pill("Undervisning")
  #pill("Rengøring")
  #pill("Reception")
  #pill("Salg")
]

// Generér CV
#cv(
  theme: theme,
  paper: "a4",
  pages-content: (
    ("left": aside-content-1, "main": main-content-1),
    ("left": aside-content-2, "main": main-content-2),
  ),
)
