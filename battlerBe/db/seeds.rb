# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Move.destroy_all
Monst.destroy_all
User.destroy_all
Mob.destroy_all
Monstmove.destroy_all
Mobmove.destroy_all

#  monster_moves
attack_number = rand(20..50)
random_str = rand(1..10)
hp_number = rand(500..1000)
kick = Move.find_or_create_by(name: 'Kick', attack: rand(20..50), desc: 'Kangaroo kick!', type:'physical')
punch = Move.find_or_create_by(name: 'Punch', attack: rand(20..50), desc: 'Walloping blow!',type:'physical'  )
bite =  Move.find_or_create_by(name: 'Bite', attack: rand(20..50), desc: 'Chomp chomp!',type:'physical')
elbow =  Move.find_or_create_by(name: 'Elbow', attack: rand(20..50), desc: 'Flying elbow!',type:'physical')
claw =  Move.find_or_create_by(name: 'Claw', attack: rand(20..50), desc: 'Scratchhhhh!',type:'cut')
acid = Move.find_or_create_by(name: 'Acid', attack: rand(20..50), desc: 'Chemical burn achieved!'type:'burn')
knife = Move.find_or_create_by(name: 'Knife', attack: rand(20..50), desc: 'Stabby stabby!'type:'cut')
sledgehammer = Move.find_or_create_by(name: 'Sledgehammer', attack: rand(20..50), desc: 'Its hammer-time!',type:'physical')
sword = Move.find_or_create_by(name: 'Sword', attack: rand(20..50), desc: 'Samourai unleashed!',type:'cut')
slap = Move.find_or_create_by(name: 'Slap', attack: rand(20..50), desc: 'SLAP!',type:'physical')
roundhouse = Move.find_or_create_by(name: 'Roundhouse', attack: rand(20..50), desc: 'Rouunnnnndhouuuse kick!',type:'physical')


#  Monsters

feralghoul = Monster.find_or_create_by(name: 'Feral Ghoul', str: rand(1..10), hp: rand(500..1000), desc: 'Gastly ghoooul', img: 'https://static.comicvine.com/uploads/original/1/15659/3210875-ghouls-fallout-new_vegas.jpg')
orge = Monster.find_or_create_by(name: 'Orge', str: rand(1..10), hp: rand(500..1000), desc: 'Hulky muscle', img: 'https://www.writeups.org/wp-content/uploads/Doom-Demon-DoomHD.jpg')
spider = Monster.find_or_create_by(name: 'Spider', str: rand(1..10), hp: rand(500..1000), desc: 'Creepy crawly', img: 'https://i.pinimg.com/originals/91/12/4e/91124e31fc15c155e397db8955a12f5e.jpg')


#  user
tiff = User.find_or_create_by(name: 'Tiffany', desc: 'Cat mom')
mickey = User.find_or_create_by(name: 'Mickey', str: rand(1..10), hp: rand(500..1000), desc: 'The quiet one, lurking and waiting to strike')

#user moves
tiffpunch = Usermove.create(user_id:tiff.id, move_id: punch.id)
tiffslap = Usermove.create(user_id:tiff.id, move_id: slap.id)
tiffknife = Usermove.create(user_id:tiff.id, move_id: knife.id)

mickeyroundhouse = Mobmove.create(user_id:mickey.id, move_id:roundhouse.id)
mickeyelbow = Mobmove.create(user_id:mickey.id, move_id:elbow.id)
mickeysledgehammer = Mobmove.create(user_id:mickey.id, move_id:sledgehammer.id)

#monster movesb
feralghoulbite = Monstermove.create(monster_id:feralghoul.id, move_id:bite.id)
orgeelbow = Monstermove.create(monster_id:orge.id, move_id:elbow.id)
spideracid = Monstermove.create(monster_id:spider.id, move_id:acid.id)