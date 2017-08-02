module SessionHelper
  def seed_data_base
    Response.create(message: "Welcome traveller to the world of Codenmore. An odd world full of mysterious occurences to get lost in.
    As you frolic across a meddow you notice you can go one of two ways. Which way would you like to go?", result: "continue")
    Option.create(message: "North", next_response_id: 2, response_id: 1)
    Option.create(message: "South", next_response_id: 3, response_id: 1)

    Response.create(message: "Suddenly things turn foggy, you stumble off a cliff and break your leg.
    Looks like it's all down hill from here!", result: "fail")
    Response.create(message: "The sun beckons to you as you stroll along a well formed travelway.
    You come to another fork in the road. Which way now?", result: "continue")
    Option.create(message: "Left towards a castle", next_response_id: 4, response_id: 3)
    Option.create(message: "Right into a forest", next_response_id: 5, response_id: 3)

    Response.create(message: 'As you march steadfast up to the imposing wooden gates, a wild arrow is
    let loose from the walls and strikes you in the neck. Better luck next time', result: 'fail')
    Response.create(message: 'It truly is a glorious day, the sun is shining, birds are tweeting.
    You start to loose track of how far you have come. As you round a corner you notice a great, might bear blocking your path.
    What do you do?', result: 'continue')
    Option.create(message: 'Wait', next_response_id: 6, response_id: 5)
    Option.create(message: 'Run for you life', next_response_id: 7, response_id: 5)

    Response.create(message: 'The bear stares right at you with a piercing gaze, before calmly walking on.
    As you continue down the path you can see the flicker of fire light in the distance. As you get closer
    you realise it is a group of men drinking and smoking old toby. You can hear singing and merriment eminating from the group.
    You are home! Congratulations!', result: 'pass')
    Response.create(message: "You run as if a monsterious bear is chasing you, oh wait, it is! Unfortuantely for you bears are fast runners.
    I shalln't go into all the gory details, but lets just say you wont be adventuring anytime soon!", result: 'fail')
  end
end
