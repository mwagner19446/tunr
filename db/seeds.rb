# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Song.delete_all

tswift = Artist.create(name: "Taylor Swift", genre: "country", photo_url:"http://media.northjersey.com/images/0324f_Taylor%2BSwift%2B2013_60p.jpg")
clash = Artist.create(name: "The Clash", genre: "punk", photo_url:"http://upload.wikimedia.org/wikipedia/en/0/00/TheClashLondonCallingalbumcover.jpg")

youbelong = Song.create(title: "You belong with me", year: "2012", artist_id: Artist.find_by(name: "Taylor Swift").id )
lovestory = Song.create(title: "Love Story", year: "2012", artist_id: Artist.find_by(name: "Taylor Swift").id  )
londoncalling = Song.create(title: "London Calling", year: "1977", artist_id: Artist.find_by(name: "The Clash").id  )
rudy = Song.create(title: "Rudy Can't Fail", year: "1977", artist_id: Artist.find_by(name: "The Clash").id   )




