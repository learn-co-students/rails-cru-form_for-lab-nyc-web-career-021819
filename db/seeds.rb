# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.new(name: "Ella", bio:"multi-grammy award-winning rocker")

g1 = Genre.new(name: "Rock")

s1 = Song.new(name: "mo treat no cry", artist_id: a1, genre_id: g1 )
