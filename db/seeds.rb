# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Theme.create(:id => 1, :name=>'Lite')
# Option.delete_all
# Response.delete_all

Response.create(message: "Welcome traveller to the world of Codenmore. An odd world full of mysterious occurences to get lost in. As you frolic across a meddow you notice you can go one of two ways. Which way would you like to go?", result: "continue")
Option.create(message: "North", next_response_id: 2, response_id: 1)
Option.create(message: "South", next_response_id: 3, response_id: 1)

Response.create(message: "Suddenly things turn foggy, you stumble off a cliff and break your leg, Looks like it's all down hill from here!", result: "fail")
Response.create(message: "The sun beckons to you as you stroll along a well formed travelway. You come to another fork in the road. Which way now?", result: "continue")
Option.create(message: "Left", next_response_id: 4, response_id: 3)
Option.create(message: "Right", next_response_id: 5, response_id: 3)
