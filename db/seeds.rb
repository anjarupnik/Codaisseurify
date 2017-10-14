Song.destroy_all
Artist.destroy_all

talking_heads = Artist.create!(name: "Talking Heads")
rodriguez = Artist.create!(name: "Rodriguez")
nick_cave = Artist.create!(name: "Nick Cave & The Bad Seeds")
the_smiths = Artist.create!(name: "The Smiths")
stone_roses = Artist.create!(name: "The Stone Roses")
white_stripes = Artist.create!(name: "The White Stripes")


Song.create!(name: "Psycho Killer",
  link: "https://www.youtube.com/watch?v=O52jAYa4Pm8&list=PL4_Fedo_oysSS2VVJRY9o9mj4mHB3EDDc",
  artist: talking_heads)
Song.create!(name: "Once In A Lifetime",
  link: "https://www.youtube.com/watch?v=O52jAYa4Pm8&list=PL4_Fedo_oysSS2VVJRY9o9mj4mHB3EDDc",
  artist: talking_heads)
Song.create!(name: "Road To Nowhere",
  link: "https://www.youtube.com/watch?v=AWtCittJyr0",
  artist: talking_heads)
Song.create!(name: "Sugar Man",
  link: "https://www.youtube.com/watch?v=qyE9vFGKogs&list=PLkdNQBttbMkIBBASCAaBROJhLGTXJhpLN",
  artist: rodriguez)
Song.create!(name: "I Wonder",
  link: "https://www.youtube.com/watch?v=t6bjqdll7DI&index=2&list=PLkdNQBttbMkIBBASCAaBROJhLGTXJhpLN",
  artist: rodriguez)
Song.create!(name: "Crucify Your Mind",
  link: "https://www.youtube.com/watch?v=-qFP-dsl2Z0&list=PLkdNQBttbMkIBBASCAaBROJhLGTXJhpLN",
  artist: rodriguez)
Song.create!(name: "Red Right Hand",
  link: "https://www.youtube.com/watch?v=RrxePKps87k&list=PL6qrs7uybcYAQRA3cfSF3bE7bOBLfPJ8Q",
  artist: nick_cave)
Song.create!(name: "Bring It On",
  link: "https://www.youtube.com/watch?v=3uzHzIq_XfE",
  artist: nick_cave)
Song.create!(name: "Henry Lee",
  link: "https://www.youtube.com/watch?v=QzmMB8dTwGs&list=PL6qrs7uybcYAQRA3cfSF3bE7bOBLfPJ8Q",
  artist: nick_cave)
Song.create!(name: "This Charming Man",
  link: "https://www.youtube.com/watch?v=cJRP3LRcUFg&list=PLze5jhu6M0TV09Sxy-NWAjjlEkuPgDeeD",
  artist: the_smiths)
