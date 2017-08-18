music = {
  medal: {
    groove_medal: [
      "Pantera",
      "White Zombie",
      "Anthrax"
    ],
    industrial_medal: [
      "KMFDM",
      "Front 242",
      "Nine Inch Nails"
    ],
    nu_medal: [
      "Korn",
      "Slipknow",
      "System Of A Down"
    ]
  },
  electronic: {
    speedcore: [
      "Kobarya",
      "The Quick Brown Fox",
      "m1dy"
    ],
    drum_and_base: [
      "Jackal Queenston",
      "Aphrodite",
      "DC Breaks"
    ],
    IDM: [
      "Aphex Twin",
      "Autechre",
      "The Orb"
    ]
  },
  rock: {
    clasic: [
      "Led Zeppelin",
      "The Beatles",
      "AC/DC"
    ],
    progressive: [
      "Rush",
      "Dream Theater",
      "Pink Floyd"
    ],
    modern: [
      "Deerhunter",
      "Sleater-Kinney",
      "Vampire Weekend"
    ]
  }
}
puts ""
p music[:electronic][:speedcore][1]
puts ""
p music[:medal][:groove_medal][0]
puts ""
p music[:rock][:progressive][2]