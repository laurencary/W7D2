# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Band.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('bands')


User.create!(email: 'lauren@aa.com', password: 'lauren1')
User.create!(email: 'austin@aa.com', password: 'austin1')
User.create!(email: 'helena@aa.com', password: 'helena1')

Band.create!(name:'Miley Cyrus')
Band.create!(name:'Justin Bieber')
Band.create!(name:'Lady Gaga')
Band.create!(name:'Lizzo')
Band.create!(name:'Taylor Swift')