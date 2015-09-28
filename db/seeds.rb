# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |i|
  User.create(name: "user"+"#{i}", lastname: "user"+"#{i}", email: "pruebaemail"+"#{i}"+"@email.com", password: "123456789", nickname: "us"+"#{i}")
  Game.create(name: "Game"+"#{i}", maker: "1111111111", launch_date:"111111")
  Category.create(name: "category"+"#{i}")
  

end
Platform.create(platform: "XBOX", console: "Xbox one")
Platform.create(platform: "PLAY STATION", console: "PS 4")