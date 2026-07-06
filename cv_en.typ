//! NOTE: Requires FontAwesome 6 and Open Sans fonts installed to render correctly.
//! Compile with: typst compile cv_en.typ

#import "@preview/impressive-impression:0.2.1": (
  cv,
  dot-ratings,
  make-pill,
  make-aside-persona,
  make-aside-grid,
  make-main-content-block,
  make-main-content-block-with-timeline,
  theme-helper,
)

#import "utils.typ": fa-icon-factory, fa-icon-factory-stack
#import "theme.typ": theme

#import "@preview/fontawesome:0.6.2": fa-icon

#let name = "María Laura Espinal Bracho"
// ponytail: swap profile.jpg for your own photo, same filename
#let profile-image = image("profile.jpg")
#let short-description = [Odontology Student & Customer Service Professional]

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

// Page 1
#let main-content-1 = [
  == Profile
  #block([
    #set par(justify: true)
    Odontology student with more than ten years of international experience across customer service, sales, hospitality, and teaching in Denmark, Sweden, and Spain. Reliable, adaptable, and comfortable working under pressure in fast-paced, multilingual environments.
  ])

  == Education
  #make-main-content-block-with-timeline(
    ([2025], [2023]),
    "Odontology",
    supplement: [Universidad de València, Spain],
    [Studies in dentistry and oral health.],
  )
  #make-main-content-block-with-timeline(
    ([2022], [2021]),
    "Business Management (not completed)",
    supplement: [BYU–Idaho],
    [Coursework in business management fundamentals.],
  )
  #make-main-content-block-with-timeline(
    [2018],
    "College Preparation Programme",
    supplement: [BYU Pathway Worldwide],
    [Programme preparing students for higher education.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2015],
    "High School Diploma",
    supplement: [Spain],
    [],
    timeline-line-gap: 0pt,
  )

  == Experience
  #make-main-content-block-with-timeline(
    ([2026], [2025]),
    "Restaurant Assistant",
    supplement: [Kina Grill, Hedehusene, Denmark],
    [
      - Received customer orders by phone and in person.
      - Packed and delivered orders.
      - Prepared food and organised inventory.
    ],
  )
  #make-main-content-block-with-timeline(
    ([2023], [2022]),
    "Piñata Maker (Self-Employed)",
    supplement: [L&L Piñatas],
    [
      - Designed and produced custom piñatas to order.
      - Managed the schedule, incoming orders, and occasional deliveries.
    ],
  )
  #make-main-content-block-with-timeline(
    [2022],
    "Telephone Customer Service",
    supplement: [Spain],
    [Handled customer enquiries and orders by phone.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2022],
    "Administrative Assistant",
    supplement: [Multas.com, Valencia, Spain],
    [- Advised prospective clients on the best options to settle their fines.],
  )
  #make-main-content-block-with-timeline(
    [2020],
    "Customer Service",
    supplement: [Gerege Restaurant, Malmö, Sweden],
    [
      - Took orders and processed payments.
      - Served customers personally and provided recommendations.
    ],
  )
  #make-main-content-block-with-timeline(
    [2020],
    "Customer Service",
    supplement: [McDonald's, Malmö, Sweden],
    [- Took customer orders, presented menu options, and delivered orders.],
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
    [Hedekæret 87, 2. th, Denmark],
    iconer-stack("phone"),
    [#link("tel:+4593840991", "+45 93 84 09 91")],
    iconer-stack("at"),
    [#link("mailto:mari_lau_541@hotmail.com", "mari_lau_541@hotmail.com")],
    iconer-stack("car"),
    [Driving licence, type B],
  )

  == Languages
  #make-aside-grid(
    columns: 2,
    rows: 14pt,
    align: (horizon + left, horizon + right),
    theme: theme,
    [Spanish (native)], dot-ratings(5, 5),
    [English (fluent)], dot-ratings(5, 5),
    [Danish (B)], dot-ratings(3, 5),
  )

  == Skills
  #make-aside-grid(
    columns: 2,
    theme: theme,
    iconer("headset"), [Customer Service],
    iconer("cash-register"), [Sales & Cashiering],
    iconer("utensils"), [Food Service],
    iconer("chalkboard-teacher"), [Teaching],
    iconer("boxes-stacked"), [Inventory],
    iconer("broom"), [Cleaning],
  )

  == Strengths
  #make-aside-grid(
    columns: 2,
    theme: theme,
    iconer("comments", solid: true), [Communication],
    iconer("people-group"), [Teamwork],
    iconer("shuffle"), [Adaptability],
    iconer("clock"), [Working Under Pressure],
  )
]

// Page 2
#let main-content-2 = [
  == Experience (continued)
  #make-main-content-block-with-timeline(
    ([2020], [2019]),
    "Cleaner",
    supplement: [ChemDry, Copenhagen, Denmark],
    [- Cleaned carpets and surfaces for private homes, offices, and major retail stores.],
  )
  #make-main-content-block-with-timeline(
    [2019],
    "Game Master",
    supplement: [Fox in a Box, Malmö, Sweden],
    [
      - Greeted customers and explained the escape-room games, offering clues.
      - Ensured players understood the rules and that games ran correctly.
    ],
  )
  #make-main-content-block-with-timeline(
    [2018],
    "Saleswoman",
    supplement: [Italian Village],
    [- Customer contact, sales, and visual presentation of pesto, parmesan, and other products.],
  )
  #make-main-content-block-with-timeline(
    ([2018], [2015]),
    "English Teacher",
    supplement: [Madrid & Valencia, Spain],
    [
      - Taught adults and children preparing for official exams or personal learning.
      - Tailored guidance to each learner and coordinated a growing group of students.
    ],
  )
  #make-main-content-block-with-timeline(
    [2017],
    "Receptionist",
    supplement: [Sol Hostel, Madrid, Spain],
    [- Received guests and handled check-in and check-out using the front-desk system.],
  )
  #make-main-content-block-with-timeline(
    [2016],
    "Restaurant Cashier & Kitchen Assistant",
    supplement: [La Familia Pizzeria, Castellón, Spain],
    [
      - Advised customers on menu options and processed payments.
      - Assisted in the kitchen preparing pizzas.
    ],
  )
  #make-main-content-block-with-timeline(
    [2016],
    "Store Saleswoman",
    supplement: [Locutorio Samira, Castellón, Spain],
    [
      - Managed customer allocation across workstations.
      - Advised customers on purchasing the right device.
    ],
  )
  #make-main-content-block-with-timeline(
    ([2015], [2014]),
    "Waitress",
    supplement: [A Babor Restaurant, Valencia, Spain],
    [
      - Attended to client preferences, building a base of regulars.
      - Worked the bar preparing drinks and coffee.
      - Served approximately 300 covers a day during peak season under time pressure.
    ],
  )

  == Volunteer Experience
  #make-main-content-block-with-timeline(
    ([2018], [2015]),
    "Volunteer Youth Leader",
    supplement: [The Church of Jesus Christ of Latter-day Saints, Spain],
    [
      - Planned lessons and activities supporting the personal development of young adults (18–30).
      - Coordinated with other leaders to deliver these activities.
    ],
  )
  #make-main-content-block-with-timeline(
    [2017],
    "Youth Conference Counselor",
    supplement: [The Church of Jesus Christ of Latter-day Saints, Segovia, Spain],
    [- Planned teachings and activities and cared for the wellbeing of young participants (14–17).],
  )
  #make-main-content-block-with-timeline(
    ([2017], [2016]),
    "Volunteer Missionary",
    supplement: [The Church of Jesus Christ of Latter-day Saints, Málaga, Spain],
    [- Counselled, supported, and guided people in their personal development.],
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

  == Industries
  #let pill = body => make-pill(body, theme)
  #pill("Hospitality")
  #pill("Retail")
  #pill("Restaurants")
  #pill("Customer Service")
  #pill("Teaching")
  #pill("Cleaning")
  #pill("Reception")
  #pill("Sales")
]

// Generate CV
#cv(
  theme: theme,
  paper: "a4",
  pages-content: (
    ("left": aside-content-1, "main": main-content-1),
    ("left": aside-content-2, "main": main-content-2),
  ),
)
