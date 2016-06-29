# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
psg = Team.create({name: "Paris Saint-Germain "})
puac = Team.create({name: "Pays d'Aix Université Club"})

melic = Player.create({name: "Fahrudin Melic", number: 4, team_id: psg.id})
mollgaard = Player.create({name: "Henrik Mollgaard", number: 5, team_id: psg.id})
accambray = Player.create({name: "William Accambray", number: 6, team_id: psg.id})
vori = Player.create({name: "Igor Vori", number: 9, team_id: psg.id})
kounkoud = Player.create({name: "Benoit Kounkoud", number: 11, team_id: psg.id})
gunnarsson = Player.create({name: "Robert Gunnarsson", number: 18, team_id: psg.id})
karabatic = Player.create({name: "Luka Karabatic", number: 22, team_id: psg.id})
hansen = Player.create({name: "Mikkel Hansen", number: 24, team_id: psg.id})
narcisse = Player.create({name: "Daniel Narcisse", number: 25, team_id: psg.id})
onufriyenko = Player.create({name: "Sergiy Onufriyenko", number: 33, team_id: psg.id})
honrubia = Player.create({name: "Samuel Honrubia", number: 34, team_id: psg.id})
mtima = Player.create({name: "Jeffrey M'Tima", number: 90, team_id: psg.id})
annonay = Player.create({name: "Patrice Annonay", number: 1, team_id: psg.id})
omeyer = Player.create({name: "Thierry Omeyer", number: 16, team_id: psg.id})

goni = Player.create({name: "Iosu Goni Leoz", number: 5, team_id: puac.id})
cochard = Player.create({name: "Hugo Cochard", number: 6, team_id: puac.id})
loesch = Player.create({name: "Gabriel Loesch", number: 8, team_id: puac.id})
fernandez = Player.create({name: "Jérôme Fernandez", number: 11, team_id: puac.id})
konan = Player.create({name: "Karl Oliver Konan", number: 19, team_id: puac.id})
rossi = Player.create({name: "Sébastien Rossi", number: 22, team_id: puac.id})
tobie = Player.create({name: "Luc Tobie", number: 24, team_id: puac.id})
andreu = Player.create({name: "Juan Andreu Candau", number: 34, team_id: puac.id})
saubich = Player.create({name: "Joan Saubich", number: 37, team_id: puac.id})
kasal = Player.create({name: "Michal Kasal", number: 41, team_id: puac.id})
minne = Player.create({name: "Aymeric Minne", number: 44, team_id: puac.id})
gerard = Player.create({name: "Yvan Gerard", number: 88, team_id: puac.id})
peillet = Player.create({name: "Roman Le Peillet", number: 12, team_id: puac.id})
erevik = Player.create({name: "Öle Erevik", number: 16, team_id: puac.id})

game = Game.create({home_id: psg.id, away_id: puac.id, date: "02/06/2016"})
