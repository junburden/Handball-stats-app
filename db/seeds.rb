# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### LEAGUES ###
league = League.create({name: "Ligue Nationale de Handball"})

### TOURNAMENTS ###
tournament = Tournament.create({name: "LIDL Star League 2015-2016", league_id: league.id, start_date: "09/09/2015", end_date: "02/06/2016"})

### TEAMS ###
psg = Team.create({name: "Paris Saint-Germain "})
puac = Team.create({name: "Pays d'Aix Université Club"})

### PLAYERS ###
melic = Player.create({first_name: "Fahrudin", last_name: "Melic"})
mollgaard = Player.create({first_name: "Henrik", last_name: "Mollgaard"})
accambray = Player.create({first_name: "William", last_name: "Accambray"})
vori = Player.create({first_name: "Igor", last_name: "Vori"})
kounkoud = Player.create({first_name: "Benoit", last_name: "Kounkoud"})
gunnarsson = Player.create({first_name: "Robert", last_name: "Gunnarsson"})
karabatic = Player.create({first_name: "Luka", last_name: "Karabatic"})
hansen = Player.create({first_name: "Mikkel", last_name: "Hansen"})
narcisse = Player.create({first_name: "Daniel", last_name: "Narcisse"})
onufriyenko = Player.create({first_name: "Sergiy", last_name: "Onufriyenko"})
honrubia = Player.create({first_name: "Samuel", last_name: "Honrubia"})
mtima = Player.create({first_name: "Jeffrey", last_name: "M'Tima"})
annonay = Player.create({first_name: "Patrice", last_name: "Annonay"})
omeyer = Player.create({first_name: "Thierry", last_name: "Omeyer"})

goni = Player.create({first_name: "Iosu Goni", last_name: "Leoz"})
cochard = Player.create({first_name: "Hugo", last_name: "Cochard"})
loesch = Player.create({first_name: "Gabriel", last_name: "Loesch"})
fernandez = Player.create({first_name: "Jérôme", last_name: "Fernandez"})
konan = Player.create({first_name: "Karl Oliver", last_name: "Konan"})
rossi = Player.create({first_name: "Sébastien", last_name: "Rossi"})
tobie = Player.create({first_name: "Luc", last_name: "Tobie"})
candau = Player.create({first_name: "Juan Andreu", last_name: "Candau"})
saubich = Player.create({first_name: "Joan", last_name: "Saubich"})
kasal = Player.create({first_name: "Michal", last_name: "Kasal"})
minne = Player.create({first_name: "Aymeric", last_name: "Minne"})
gerard = Player.create({first_name: "Yvan", last_name: "Gerard"})
peillet = Player.create({first_name: "Ronan", last_name: "Le Peillet"})
erevik = Player.create({first_name: "Öle", last_name: "Erevik"})

### MEMBERSHIPS ###
Membership.create({player_id: melic.id,number: 4, position: "Right Wing", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: mollgaard.id,number: 5, position: "Left Back", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: accambray.id,number: 6, position: "Left Back", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: vori.id,number: 9, position: "Pivot", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: kounkoud.id,number: 11, position: "Left Wing", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: gunnarsson.id,number: 18, position: "Pivot", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: karabatic.id,number: 22, position: "Pivot", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: hansen.id,number: 24, position: "Left Back", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: narcisse.id,number: 25, position: "Left Back", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: onufriyenko.id,number: 33, position: "Right Back", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: honrubia.id,number: 34, position: "Left Wing", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: mtima.id,number: 90, position: "Left Wing", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: annonay.id,number: 1, position: "Goalie", team_id: psg.id, defending_team_id: puac.id, active: true})
Membership.create({player_id: omeyer.id,number: 16, position: "Goalie", team_id: psg.id, defending_team_id: puac.id, active: true})

Membership.create({player_id: goni.id,number: 5, position: "Left Back", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: cochard.id,number: 6, position: "Left Wing", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: loesch.id,number: 8, position: "Right Wing", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: fernandez.id,number: 11, position: "Left Back", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: konan.id,number: 19, position: "Left Back", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: rossi.id,number: 22, position: "Pivot", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: tobie.id,number: 24, position: "Right Back", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: candau.id,number: 34, position: "Pivot", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: saubich.id,number: 37, position: "Right Wing", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: kasal.id,number: 41, position: "Left Back", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: minne.id,number: 44, position: "Centre", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: gerard.id,number: 88, position: "Left Wing", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: peillet.id,number: 12, position: "Goalie", team_id: puac.id, defending_team_id: psg.id, active: true})
Membership.create({player_id: erevik.id,number: 16, position: "Goalie", team_id: puac.id, defending_team_id: psg.id, active: true})

### GAMES ###
game = Game.create({home_id: psg.id, away_id: puac.id, date: "02/06/2016", tournament_id: tournament.id})

### SHOTS ###
shots = [
  {goal: false, seven: false, x_position: 54, y_position: 111.5, shooter_x_pos: -215, shooter_z_pos: 610, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: -140.5, y_position: 190.5, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 144.5, y_position: 111, shooter_x_pos: 370, shooter_z_pos: 740, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 132.5, y_position: 151, shooter_x_pos: -260, shooter_z_pos: 425, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 143, y_position: 157.5, shooter_x_pos: -295, shooter_z_pos: 710, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 52, y_position: 119, shooter_x_pos: 80, shooter_z_pos: 820, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -132, y_position: 103, shooter_x_pos: -440, shooter_z_pos: 800, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -79, y_position: 13.5, shooter_x_pos: 460, shooter_z_pos: 535, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -104, y_position: 91.5, shooter_x_pos: -290, shooter_z_pos: 465, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: gerard.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 115, y_position: 10, shooter_x_pos: 425, shooter_z_pos: 690, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 96, y_position: 10, shooter_x_pos: -450, shooter_z_pos: 835, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 135, y_position: 66, shooter_x_pos: 525, shooter_z_pos: 645, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: mollgaard.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -48.5, y_position: 29.5, shooter_x_pos: 460, shooter_z_pos: 550, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: 121, y_position: 10, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id , goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 77.5, y_position: 116, shooter_x_pos: 550, shooter_z_pos: 480, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: -47.5, y_position: 160, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 120.5, y_position: 30, shooter_x_pos: 470, shooter_z_pos: 355, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -173, y_position: 91.5, shooter_x_pos: -185, shooter_z_pos: 865, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 57, y_position: 18.5, shooter_x_pos: -630, shooter_z_pos: 570, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: true, x_position: 64, y_position: 47.5, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: -135, y_position: 41.5, shooter_x_pos: -485, shooter_z_pos: 670, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -59.5, y_position: 37.5, shooter_x_pos: 25, shooter_z_pos: 885, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: mollgaard.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -140, y_position: 190, shooter_x_pos: 230, shooter_z_pos: 935, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: tobie.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: 120.5, y_position: 174.5, shooter_x_pos: -215, shooter_z_pos: 875, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 131.5, y_position: 70, shooter_x_pos: -385, shooter_z_pos: 715, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -111.5, y_position: 129, shooter_x_pos: 250, shooter_z_pos: 870, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 82, y_position: 111.5, shooter_x_pos: -495, shooter_z_pos: 400, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: gerard.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -93.5, y_position: 36, shooter_x_pos: -330, shooter_z_pos: 555, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: karabatic.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 136.5, y_position: 200.5, shooter_x_pos: -505, shooter_z_pos: 340, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 78.5, y_position: 50.5, shooter_x_pos: 50, shooter_z_pos: 915, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 125.5, y_position: 50.5, shooter_x_pos: -90, shooter_z_pos: 575, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: candau.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 85.5, y_position: 8.5, shooter_x_pos: -225, shooter_z_pos: 520, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id:honrubia.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -119.5, y_position: 148.5, shooter_x_pos: -570, shooter_z_pos: 470, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: -97.5, y_position: 54, shooter_x_pos: 190, shooter_z_pos: 840, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 116, y_position: 7.5, shooter_x_pos: 90, shooter_z_pos: 605, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: candau.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -152.5, y_position: 91.5, shooter_x_pos: 60, shooter_z_pos: 975, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: tobie.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -124.5, y_position: 21.5, shooter_x_pos: -5, shooter_z_pos: 875, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 124.5, y_position: 91, shooter_x_pos: 210, shooter_z_pos: 825, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 6, y_position: 194.5, shooter_x_pos: 625, shooter_z_pos: 380, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: melic.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -130.5, y_position: 10, shooter_x_pos: -360, shooter_z_pos: 620, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 141, y_position: 13, shooter_x_pos: -560, shooter_z_pos: 380, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: omeyer.id},
  {goal: false, seven: false, x_position: -179.5, y_position: 141, shooter_x_pos: 330, shooter_z_pos: 710, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 133, y_position: 165, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 119.5, y_position: 142.5, shooter_x_pos: -55, shooter_z_pos: 540, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -33, y_position: 237, shooter_x_pos: 250, shooter_z_pos: 700, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -118.5, y_position: 49.5, shooter_x_pos: -505, shooter_z_pos: 215, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: gerard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -97.5, y_position: 6, shooter_x_pos: -320, shooter_z_pos: 515, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 99.5, y_position: 90.5, shooter_x_pos: 180, shooter_z_pos: 800, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -129.5, y_position: 152.5, shooter_x_pos: -220, shooter_z_pos: 845, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -113, y_position: 126.5, shooter_x_pos: -320, shooter_z_pos: 530, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: vori.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 133.5, y_position: 192, shooter_x_pos: 105, shooter_z_pos: 425, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: accambray.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: -119.5, y_position: 39.5, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 121, y_position: 148.5, shooter_x_pos: 0, shooter_z_pos: 580, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 121.5, y_position: 148.5, shooter_x_pos: 485, shooter_z_pos: 445, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: loesch.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -30, y_position: 7.5, shooter_x_pos: -490, shooter_z_pos: 240, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: gerard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -135.5, y_position: 10.5, shooter_x_pos: -390, shooter_z_pos: 515, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: melic.id, goalie_id: erevik.id},

  # Half time

  {goal: true, seven: false, x_position: 132.5, y_position: 13, shooter_x_pos: 480, shooter_z_pos: 455, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 107, y_position: 56, shooter_x_pos: -180, shooter_z_pos: 865, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 93.5, y_position: 164, shooter_x_pos: -155, shooter_z_pos: 540, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -176, y_position: 13.5, shooter_x_pos: 465, shooter_z_pos: 780, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -132.5, y_position: 63.5, shooter_x_pos: 540, shooter_z_pos: 255, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 111, y_position: 197.5, shooter_x_pos: -340, shooter_z_pos: 725, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -111.5, y_position: 7, shooter_x_pos: 230, shooter_z_pos: 900, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 98.5, y_position: 151, shooter_x_pos: 125, shooter_z_pos: 575, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -132, y_position: 60, shooter_x_pos: 495, shooter_z_pos: 450, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: candau.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -24.5, y_position: 129.5, shooter_x_pos: 305, shooter_z_pos: 540, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},

  {goal: false, seven: true, x_position: 131, y_position: 205, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 132, y_position: 18.5, shooter_x_pos: 215, shooter_z_pos: 745, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -114, y_position: 143, shooter_x_pos: 595, shooter_z_pos: 355, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 106.5, y_position: 10.5, shooter_x_pos: -525, shooter_z_pos: 400, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 104.5, y_position: 92, shooter_x_pos: -510, shooter_z_pos: 695, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 132, y_position: 123, shooter_x_pos: -235, shooter_z_pos: 535, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 141, y_position: 130, shooter_x_pos: -400, shooter_z_pos: 680, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 131, y_position: 168, shooter_x_pos: -410, shooter_z_pos: 395, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135, y_position: 119, shooter_x_pos: 410, shooter_z_pos: 350, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: 63.5, y_position: 95, shooter_x_pos: -80, shooter_z_pos: 775, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},

  {goal: true, seven: false, x_position: -22.5, y_position: 166.5, shooter_x_pos: 425, shooter_z_pos: 575, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135, y_position: 11, shooter_x_pos: -245, shooter_z_pos: 780, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -71, y_position: 29, shooter_x_pos: 360, shooter_z_pos: 465, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: honrubia.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 101.5, y_position: 152, shooter_x_pos: 530, shooter_z_pos: 605, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 107.5, y_position: 27, shooter_x_pos: 235, shooter_z_pos: 835, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: accambray.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 122.5, y_position: 7, shooter_x_pos: 415, shooter_z_pos: 520, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: cochard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -82.5, y_position: 8, shooter_x_pos: -125, shooter_z_pos: 635, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: -81.5, y_position: 167, shooter_x_pos: -75, shooter_z_pos: 910, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -133.5, y_position: 41.5, shooter_x_pos: -105, shooter_z_pos: 455, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: kounkoud.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -132, y_position: 158, shooter_x_pos: 140, shooter_z_pos: 780, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},

  {goal: true, seven: false, x_position: -103.5, y_position: 108.5, shooter_x_pos: -225, shooter_z_pos: 580, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 173, y_position: 182, shooter_x_pos: 200, shooter_z_pos: 750, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: -125.5, y_position: 121.5, shooter_x_pos: -465, shooter_z_pos: 370, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: cochard.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 65, y_position: 62.5, shooter_x_pos: -130, shooter_z_pos: 920, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -135.5, y_position: 139.5, shooter_x_pos: 565, shooter_z_pos: 340, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 119, y_position: 164.5, shooter_x_pos: 355, shooter_z_pos: 425, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 84.5, y_position: 134, shooter_x_pos: 155, shooter_z_pos: 585, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: narcisse.id, goalie_id: erevik.id},
  {goal: false, seven: false, x_position: -79, y_position: 48.5, shooter_x_pos: 120, shooter_z_pos: 445, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: tobie.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 142, y_position: 129.5, shooter_x_pos: 540, shooter_z_pos: 610, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 91, y_position: 195.5, shooter_x_pos: -35, shooter_z_pos: 890, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: false, seven: false, x_position: 187, y_position: 56, shooter_x_pos: -130, shooter_z_pos: 770, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: goni.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 72.5, y_position: 4.5, shooter_x_pos: -70, shooter_z_pos: 535, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: vori.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: 140, y_position: 148, shooter_x_pos: 535, shooter_z_pos: 375, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 127, y_position: 34, shooter_x_pos: -165, shooter_z_pos: 620, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: vori.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 132, y_position: 7.5, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: omeyer.id},
  {goal: true, seven: false, x_position: 128.5, y_position: 21.5, shooter_x_pos: 510, shooter_z_pos: 760, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: onufriyenko.id, goalie_id: erevik.id},
  {goal: true, seven: false, x_position: -93.5, y_position: 185, shooter_x_pos: -200, shooter_z_pos: 845, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: minne.id, goalie_id: annonay.id},
  {goal: false, seven: false, x_position: 33.5, y_position: 197, shooter_x_pos: 100, shooter_z_pos: 930, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},
  {goal: true, seven: true, x_position: 108, y_position: 7.5, shooter_x_pos: 0, shooter_z_pos: 720, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: annonay.id},
  {goal: true, seven: false, x_position: 109, y_position: 16, shooter_x_pos: 70, shooter_z_pos: 840, game_id: game.id, team_id: psg.id, defending_team_id: puac.id, shooter_id: hansen.id, goalie_id: erevik.id},

  {goal: true, seven: false, x_position: 80, y_position: 71.5, shooter_x_pos: 0, shooter_z_pos: 2000, game_id: game.id, team_id: puac.id, defending_team_id: psg.id, shooter_id: saubich.id, goalie_id: honrubia.id}
]

shots.each do |shot|
  Shot.create(shot)
end
