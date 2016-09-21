# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
psg = Team.create({name: "Paris Saint-Germain "})
puac = Team.create({name: "Pays d'Aix Université Club"})

melic = Player.create({first_name: "Fahrudin", last_name: "Melic", number: 4, team_id: psg.id})
mollgaard = Player.create({first_name: "Henrik", last_name: "Mollgaard", number: 5, team_id: psg.id})
accambray = Player.create({first_name: "William", last_name: "Accambray", number: 6, team_id: psg.id})
vori = Player.create({first_name: "Igor", last_name: "Vori", number: 9, team_id: psg.id})
kounkoud = Player.create({first_name: "Benoit", last_name: "Kounkoud", number: 11, team_id: psg.id})
gunnarsson = Player.create({first_name: "Robert", last_name: "Gunnarsson", number: 18, team_id: psg.id})
karabatic = Player.create({first_name: "Luka", last_name: "Karabatic", number: 22, team_id: psg.id})
hansen = Player.create({first_name: "Mikkel", last_name: "Hansen", number: 24, team_id: psg.id})
narcisse = Player.create({first_name: "Daniel", last_name: "Narcisse", number: 25, team_id: psg.id})
onufriyenko = Player.create({first_name: "Sergiy", last_name: "Onufriyenko", number: 33, team_id: psg.id})
honrubia = Player.create({first_name: "Samuel", last_name: "Honrubia", number: 34, team_id: psg.id})
mtima = Player.create({first_name: "Jeffrey", last_name: "M'Tima", number: 90, team_id: psg.id})
annonay = Player.create({first_name: "Patrice", last_name: "Annonay", number: 1, team_id: psg.id})
omeyer = Player.create({first_name: "Thierry", last_name: "Omeyer", number: 16, team_id: psg.id})

goni = Player.create({first_name: "Iosu Goni", last_name: "Leoz", number: 5, team_id: puac.id})
cochard = Player.create({first_name: "Hugo", last_name: "Cochard", number: 6, team_id: puac.id})
loesch = Player.create({first_name: "Gabriel", last_name: "Loesch", number: 8, team_id: puac.id})
fernandez = Player.create({first_name: "Jérôme", last_name: "Fernandez", number: 11, team_id: puac.id})
konan = Player.create({first_name: "Karl Oliver", last_name: "Konan", number: 19, team_id: puac.id})
rossi = Player.create({first_name: "Sébastien", last_name: "Rossi", number: 22, team_id: puac.id})
tobie = Player.create({first_name: "Luc", last_name: "Tobie", number: 24, team_id: puac.id})
candau = Player.create({first_name: "Juan Andreu", last_name: "Candau", number: 34, team_id: puac.id})
saubich = Player.create({first_name: "Joan", last_name: "Saubich", number: 37, team_id: puac.id})
kasal = Player.create({first_name: "Michal", last_name: "Kasal", number: 41, team_id: puac.id})
minne = Player.create({first_name: "Aymeric", last_name: "Minne", number: 44, team_id: puac.id})
gerard = Player.create({first_name: "Yvan", last_name: "Gerard", number: 88, team_id: puac.id})
peillet = Player.create({first_name: "Roman Le", last_name: "Peillet", number: 12, team_id: puac.id})
erevik = Player.create({first_name: "Öle", last_name: "Erevik", number: 16, team_id: puac.id})

game = Game.create({home_id: psg.id, away_id: puac.id, date: "02/06/2016"})

shots = [
  {goal: false, seven: false, x_position: 54, y_position: 111.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: -140.5, y_position: 190.5, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 144.5, y_position: 111, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 132.5, y_position: 151, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 143, y_position: 157.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 52, y_position: 119, game_id: game.id, team_id: puac.id, shooter_id: fernandez.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -132, y_position: 103, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -79, y_position: 13.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -104, y_position: 91.5, game_id: game.id, team_id: puac.id, shooter_id: gerard.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 115, y_position: 10, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 96, y_position: 10, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 135, y_position: 66, game_id: game.id, team_id: psg.id, shooter_id: mollgaard.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -48.5, y_position: 29.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: 121, y_position: 10, game_id: game.id, team_id: puac.id, shooter_id: loesch.id , goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 77.5, y_position: 116, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: -47.5, y_position: 160, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 120.5, y_position: 30, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -173, y_position: 91.5, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 57, y_position: 18.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: 64, y_position: 47.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: -135, y_position: 41.5, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -59.5, y_position: 37.5, game_id: game.id, team_id: psg.id, shooter_id: mollgaard.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -140, y_position: 190, game_id: game.id, team_id: puac.id, shooter_id: tobie.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 120.5, y_position: 174.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 131.5, y_position: 70, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -111.5, y_position: 129, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 82, y_position: 111.5, game_id: game.id, team_id: puac.id, shooter_id: gerard.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -93.5, y_position: 36, game_id: game.id, team_id: psg.id, shooter_id: karabatic.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 136.5, y_position: 200.5, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 78.5, y_position: 50.5, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 125.5, y_position: 50.5, game_id: game.id, team_id: puac.id, shooter_id: candau.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 85.5, y_position: 8.5, game_id: game.id, team_id: psg.id, shooter_id:honrubia.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -119.5, y_position: 148.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -97.5, y_position: 54, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 116, y_position: 7.5, game_id: game.id, team_id: puac.id, shooter_id: candau.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -152.5, y_position: 91.5, game_id: game.id, team_id: puac.id, shooter_id: tobie.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -124.5, y_position: 21.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 124.5, y_position: 91, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 6, y_position: 194.5, game_id: game.id, team_id: psg.id, shooter_id: melic.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -130.5, y_position: 10, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 141, y_position: 13, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -179.5, y_position: 141, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 133, y_position: 165, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 119.5, y_position: 142.5, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -33, y_position: 237, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -118.5, y_position: 49.5, game_id: game.id, team_id: puac.id, shooter_id: gerard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -97.5, y_position: 6, game_id: game.id, team_id: psg.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 99.5, y_position: 90.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -129.5, y_position: 152.5, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -113, y_position: 126.5, game_id: game.id, team_id: psg.id, shooter_id: vori.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 133.5, y_position: 192, game_id: game.id, team_id: psg.id, shooter_id: accambray.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: -119.5, y_position: 39.5, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 121, y_position: 148.5, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 121.5, y_position: 148.5, game_id: game.id, team_id: puac.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -30, y_position: 7.5, game_id: game.id, team_id: puac.id, shooter_id: gerard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -135.5, y_position: 10.5, game_id: game.id, team_id: psg.id, shooter_id: melic.id, goalie_id: erevik.id},

  # Half time

  {goal: true, seven: false, x_position: 132.5, y_position: 13, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 107, y_position: 56, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 93.5, y_position: 164, game_id: game.id, team_id: puac.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -176, y_position: 13.5, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -132.5, y_position: 63.5, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 111, y_position: 197.5, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -111.5, y_position: 7, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 98.5, y_position: 151, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -132, y_position: 60, game_id: game.id, team_id: puac.id, shooter_id: candau.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -24.5, y_position: 129.5, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 131, y_position: 205, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 132, y_position: 18.5, game_id: game.id, team_id: puac.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -114, y_position: 143, game_id: game.id, team_id: psg.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 106.5, y_position: 10.5, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 104.5, y_position: 92, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 132, y_position: 123, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 141, y_position: 130, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 131, y_position: 168, game_id: game.id, team_id: psg.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135, y_position: 119, game_id: game.id, team_id: psg.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 63.5, y_position: 95, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},

  {goal: true, seven: false, x_position: -22.5, y_position: 166.5, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135, y_position: 11, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -71, y_position: 29, game_id: game.id, team_id: psg.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 101.5, y_position: 152, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 107.5, y_position: 27, game_id: game.id, team_id: psg.id, shooter_id: accambray.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 122.5, y_position: 7, game_id: game.id, team_id: puac.id, shooter_id: cochard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -82.5, y_position: 8, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -81.5, y_position: 167, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -133.5, y_position: 41.5, game_id: game.id, team_id: psg.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -132, y_position: 158, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},

  {goal: true, seven: false, x_position: -103.5, y_position: 108.5, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 173, y_position: 182, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -125.5, y_position: 121.5, game_id: game.id, team_id: puac.id, shooter_id: cochard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 65, y_position: 62.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135.5, y_position: 139.5, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 119, y_position: 164.5, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 84.5, y_position: 134, game_id: game.id, team_id: psg.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -79, y_position: 48.5, game_id: game.id, team_id: puac.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 142, y_position: 129.5, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 91, y_position: 195.5, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 187, y_position: 56, game_id: game.id, team_id: puac.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 72.5, y_position: 4.5, game_id: game.id, team_id: psg.id, shooter_id: vori.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 140, y_position: 148, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 127, y_position: 34, game_id: game.id, team_id: psg.id, shooter_id: vori.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 132, y_position: 7.5, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 128.5, y_position: 21.5, game_id: game.id, team_id: psg.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -93.5, y_position: 185, game_id: game.id, team_id: puac.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 33.5, y_position: 197, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 108, y_position: 7.5, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 109, y_position: 16, game_id: game.id, team_id: psg.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 80, y_position: 71.5, game_id: game.id, team_id: puac.id, shooter_id: saubich.id, goalie_id: honrubia.id}
]

shots.each do |shot|
  Shot.create(shot)
end
