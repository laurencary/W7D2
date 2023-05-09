# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Band.destroy_all
Album.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('bands')
ApplicationRecord.connection.reset_pk_sequence!('albums')

User.create!(email: 'lauren@aa.com', password: 'lauren1')
User.create!(email: 'austin@aa.com', password: 'austin1')
User.create!(email: 'helena@aa.com', password: 'helena1')

Band.create!(name:'Miley Cyrus')
Band.create!(name:'Justin Bieber')
Band.create!(name:'Lady Gaga')
Band.create!(name:'Lizzo')
Band.create!(name:'Taylor Swift')

Album.create!(band_id: 1,title: 'Endless Summer Vacation',year: 2023, is_live: false)
Album.create!(band_id: 1,title: 'Plastic Hearts',year: 2020, is_live: false)
Album.create!(band_id: 1,title: 'Breakout',year: 2008,is_live: true)
Album.create!(band_id: 2,title: 'Purpose',year: 2015,is_live: false)
Album.create!(band_id: 2,title: 'Justice',year: 2021,is_live: false)
Album.create!(band_id: 3,title: 'Born This Way',year: 2011,is_live: true)
Album.create!(band_id: 3,title: 'A Star is Born',year: 2018,is_live: false)
Album.create!(band_id: 4,title: 'Special',year: 2022,is_live: false)
Album.create!(band_id: 4,title: 'Cuz I Love You',year: 2019,is_live: true)
Album.create!(band_id: 5,title: 'Midnights',year: 2022,is_live: false)
Album.create!(band_id: 5,title: 'Speak Now',year: 2010,is_live: false)