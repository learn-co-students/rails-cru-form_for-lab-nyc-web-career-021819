# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist1 = Artist.create(name: "Test artist1", bio: "Test bio1")
artist2 = Artist.create(name: "Test artist2", bio: "Test bio2")
artist3 = Artist.create(name: "Test artist3", bio: "Test bio3")

genre1 = Genre.create(name: "Test genre1")
genre2 = Genre.create(name: "Test genre2")
genre3 = Genre.create(name: "Test genre3")

song1 = Song.create(name: "Test Song1", artist_id: 1, genre_id: 1)
song2 = Song.create(name: "Test Song2", artist_id: 2, genre_id: 2)
song3 = Song.create(name: "Test Song3", artist_id: 3, genre_id: 3)
