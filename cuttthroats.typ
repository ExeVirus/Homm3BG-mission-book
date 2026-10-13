#import "metadata.typ": *
#import "@preview/cetz:0.4.0"

#show: homm3-mission-book

#addscenariosection(
  "Rampart coop Campaign — Elixir of Life",
  "2. Cutthroats",
  images + "/gelu.png"
)

#columns(2, gutter: 1cm)[
  *Author:* Tm335

  _Lord Falorel: Rumor has it that the Ring of Vitality, one of the essential components of the Elixir of Life, is located in the Shantanna region of southern AvLee.
  Time is of the essence, for a Death Knight has been spotted talking to bandits who have long been terrorizing the area, and we believe that he has hired them to find the Ring first._

  #section-title("Scenario Length")
  This Scenario plays out over 16 Rounds.

  #section-title("Player Setup")
  *Player Count:* 2

  *Faction:* Rampart

  *Faction Hero:* Gelu (player 1), and Mephala or Clancy (player 2)

  *Starting Resources:* 15 #svg("gold"), 3 #svg("building_materials"), 1 #svg("valuables")

  *Starting Income:* 10 #svg("gold"), 0 #svg("building_materials"), 0 #svg("valuables")

  *Starting Units:* One player takes 1, the other player takes 2 of the following: a "Few" Centaurs, a "Few" Elves and a "Few" Pegasi

  *Town Buildings:* #svg("bronze") Dwelling, Citadel

  *Bonus:* One player receives one of the following:
  - Add Neutral #svg("bronze") Rogues to your Units.
  - 6 #svg("gold")
  - Add the Equestrian Gloves Artifact to your hand.

  Find the *Crest of Valor* and *Angel Wings* Artifacts, and set them aside for later use.

  #section-title("Coop Play Rules")
  In addition to the Cooperative Mode rules (see page 11, "Cooperative Mode" in the Core Mission Book), reference the attached Coop Campaign Rules specific to this campaign.

  #section-title("AI Hero Setup")
  *Faction:* Necropolis

  Before beginning this Scenario, find all Necropolis Neutral Unit Cards in all Neutral Unit Decks, and set them aside.
  These will only be used by *Necropolis Charging Armies*.

  Charging Armies move after the Players do, and take the shortest route to the Player that has the Crest of Valor or the Angel Wings.

  They ignore everything else, except they will take mines only if flagged by the Rampart player (but they will not backtrack to flag a mine).

  #section-title("Map Setup")

  Take the following Map Tiles and arrange them as shown in the Scenario map layout:

  *2 × Starting (I) Map Tile*
  - 1 × Rampart (S4)
  - 1 × Necropolis (S1)

  *5 × Far (II--III) Map Tile*
  - 4 × Castle/Rampart (F10, F12, \#F4 and choose 1 from: F6, F8, \#F8, F11)

  *4 × Near (IV--V) Map Tile*
  - 1 × Castle/Rampart (choose 1 from: N6, N8)
  - 2 × Dungeon (N2, N5)

  #section-title("Heroes Placement")
  Place both Gelu and Mephala/Clancy on the center Field of the Rampart S4 Starting Map Tile.

  #section-title("Victory Conditions")
  Obtain the Ring of Vitality.
  Seek out Feredor the Seer (\#F4), who will guide you on how to obtain the Ring of Vitality from the Man in the Southwest (F12).

  #section-title("Defeat Conditions")
  You lose if any of the following occur:
  - Gelu is defeated in a Combat encounter.
  - You fail to obtain the Ring of Vitality before the end of Round 16.

  #section-title("Timed Events")
  *1st Round:*
  - Read "Local Warlords" section.

  *2nd Round:*
  - Read "First Scout Report" section.

  *3rd Round:*
  - Read "Second Scout Report" section.

  *4th Round:*
  - Read "The Seer" section.

  *If entering the Witch Hut on \#F4:*
  - Read "Feredor the Seer — first encounter" section.

  *5th and all the following Resource Rounds:*
  - Read "Bandits" section.

  *If you obtain the Crest of Valor or enter N2 or N5 Tile:*
  - Place Necropolis Heroes on Necropolis Town (S1) and Necropolis Settlement (F1).

  #colbreak()

  *7th Round:*
  - Read "Terrible Dreams" section.

  *If entering the Witch Hut on \#F4 for the second time:*
  - Read "Feredor the Seer — second encounter" section.

  *If entering the Witch Hut on F12:*
  - Read "The Man in the Southwest" section.

  *When you complete the Scenario:*
  - Read: "Congratulations! You have passed the Trial! Victory is yours!"

  #section-title("Additional Rules")
  During this Scenario:
  - Gelu cannot surrender.
    Player 2 can surrender.
    If player 2 is defeated in Combat, lose 5 #svg("gold") and both Heroes gain a #svg("morale_negative") token.
    Player 2 Hero is then placed in any Town or Settlement you control, or on a Field adjacent to Gelu.
  - You cannot recruit a Secondary Hero.
  - Gain 2 #svg("gold") every time you defeat an Enemy Army.
  - Players can trade the Crest of Valor and Angel Wings from their hand if they are on adjacent Fields on the map.

  #section-title("Combat with Necropolis Charging Armies")
  Every time a Combat encounter starts, draw a Neutral army from the Necropolis Units set aside, with a difficulty level equal to your Hero Level.

  Every time a Necropolis Charging Army is defeated, they re-appear on the Necropolis Town (S1).
  If the Town is occupied, they re-appear on the Necropolis Settlement (F1).
  They can move again in the next Resource Round.
]

#v(1.4em)

// ---------------------------------------------------------------------------
// Map Setup (Full-width TikZ equivalent via CeTZ)
// ---------------------------------------------------------------------------
#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    content((9, -5.5), image(maps + "/rampart_cutthroats.png", width: 18cm), anchor: "center")

    let lbl(pt, txt) = content(pt, text(fill: darkcandyapplered, weight: "bold", size: 1.2em)[#txt])

    lbl((3.9, 0.6), "S4")
    lbl((11.9, -11.6), "S1")
    lbl((14.9, -6.6), "F1")
    lbl((13.5, 0.6), "#F4")
    lbl((3.7, -4.3), "F10")
    lbl((0.1, -5.5), "F12")
    lbl((11.3, -5.5), "N2")
    lbl((4.5, -10.5), "N5")

    content((1.2, -9.5), text(fill: darkcandyapplered, weight: "bold", size: 1.2em)[Man in the\ Southwest])
    content((16.9, -3.3), text(fill: darkcandyapplered, weight: "bold", size: 1.2em)[Feredor\ the Seer])

    bezier(
      (1.0, -8.9), // start (near 'Man in the')
      (0.3, -7.4), // end (bottom of F12)
      (0.0, -8.6), // ctrl1 (pulls curve out to the left)
      (0.3, -8.1), // ctrl2 (aligns vertically with end point)
      stroke: (paint: darkcandyapplered, thickness: 2.5pt),
      mark: (end: "triangle", fill: darkcandyapplered),
    )

    // 2. Feredor the Seer: curves out to the right and points straight up into #F4
    bezier(
      (17.4, -2.8), // start (right of the text)
      (17.6, -1.4), // end (bottom of the orange hex)
      (17.8, -2.3), // ctrl1 (pulls curve out to the right)
      (17.6, -1.9), // ctrl2 (aligns vertically with end point)
      stroke: (paint: darkcandyapplered, thickness: 2.5pt),
      mark: (end: "triangle", fill: darkcandyapplered),
    )
  })
]

#v(-0.1em)

// ---------------------------------------------------------------------------
// Story Section
// ---------------------------------------------------------------------------
#columns(2, gutter: 1cm)[
  #section-title("The Story")

  *Local Warlords*

  The warlords in this region are cutthroats and madmen.
  They have been looting caravans, razing villages, and butchering garrisons with no thought given to the consequences to their homeland.
  They will foolishly sell the Ring of Vitality to the Necromancers and betray their countrymen merely to fill their coffers with gold.
  These traitors should be given no quarter and shown no mercy.

  *First Scout Report*

  Your spies tell of Feredor, a seer in the Northeast (\#F4) who knows the location of the Ring of Vitality.
  Seek him out, learn the Ring's location, and then retrieve it.
  Be wary!
  The necromancers are also looking for the Ring.

  *Second Scout Report*

  Our scouts report that one of the warlords has made contact with the Necromancers and is planning a meeting very soon.
  Time is of the essence.
  Should that Ring fall into the Necromancers' hands you will need to take it from them by force.
  Use whatever means are necessary to keep that Ring safe.
  Remember that the best defense is a strong offense: clear this region and defend against any enemy incursion into the Rampart grasslands.

  *The Seer*

  The seer in the Northeast is an old wise man named Feredor.
  Seek his advice, but be warned he shall not give you the Ring outright.
  He is said to issue a test to those who seek the Ring.
  Perform whatever task he asks, for you must obtain that Ring.

  *Feredor the Seer — first encounter*

  Feredor the seer sees the Rampart hero approach and knows he must help them against the hordes of undead.
  "I can tell you where the Ring can be found.
  But you must prove your worthiness.
  Bring back the Crest of Valor to me. Now hurry!"

  #text(fill: darkcandyapplered)[Roll an Attack Die to determine the *Crest of Valor's* location:]
  - *+1* --- The Crest is on the empty Field of F12
  - *0* --- The Crest is on the empty Field of F10
  - *-1* --- The Crest is on the Magic Springs Field of N5.

  *Terrible Dreams*

  Last night your sleep was wracked with terrible dreams, visions of the dark events to come.
  You were haunted by images of a cloaked figure sweeping his skeletal hand across a grassy plain, leaving behind a desolate land overrun by legions of undead monsters.
  Sinister laughter echoed throughout your mind and soul.
  You awoke, fearful and shaken but still resolved to obtain the Ring of Vitality.

  *Feredor the Seer — second encounter*

  If you are in possession of the Crest of Valor, read: "There is a man in the southwest (F12) who has it.
  He lives in a small hut.
  He will only give it to one who he deems worthy.
  Bring him these Angel Wings and he will know I sent you.
  Move with haste, there is little time."

  #text(fill: darkcandyapplered)[Remove the *Crest of Valor* from the game, and put *Angel Wings* into your hand.]

  *The Man in the Southwest*

  If you do not have the Angel Wings (in your hand or Deck) and enter this Field, the Man in the Southwest says: "You are a fool! You are not worthy! Be gone!"

  If you are in possession of the Angel Wings (in your hand or Deck) and enter this Field, the Man in the Southwest says: "Ahhhhh, I see Feredor sent you.
  You are worthy.
  Here, I give you the Ring of Vitality!"

  *Bandits*

  If you haven't secured all mines in all the Grass Map Tiles, bandits have attacked your supply lines and taken valuable resources.

  #text(fill: darkcandyapplered)[Lose: 5 #svg("gold"), 1 #svg("building_materials"), 1 #svg("valuables").]

  #v(1fr)
  #align(center)[
    #image(art + "/dwarf.jpg", width: 100%)
  ]
]