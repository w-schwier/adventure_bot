# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Theme.create(:id => 1, :name=>'Lite')
# Response.delete_all
# Option.delete_all

Response.create(message: "Which way?", result: "Continue")
Option.create(message: "Left", next_response_id: 2, response_id: 1)
Option.create(message: "Right", next_response_id: 2, response_id: 1)
