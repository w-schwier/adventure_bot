# Adventure-Bot

### What is it?

Adventure-bot is a simple web-app that guides the user through a journey in a magical far off land.

### My Approach

In trying to build this app I first started by thinking of the structure of the MVC, databases and their relations.
I spend a lot of time thinking and writing out how I thought the structure would be, probably too long, but this also made writing the code a lot easier as I had a clearer vision of how everything tied together.
I decided I needed a Game view and controller and MVC for my Responses and Options classes.
Responses could have many options, whereas each option had one response and lead to another response.

## Installation

Open up terminal and type ```git clone https://github.com/w-schwier/adventure_bot```

Change into the directory ```cd adventure_bot```

Install required gems by running ```bundle install``` If you don't already have bundle installed run ```brew install bundle```(this assumes you have homebrew installed)

In order set up the databases and seed them with the adventure, run ```bin/rake db:create db:migrate db:seed```

To start the server run ```bin/rails s```

Then visit [localhost.3000/game](http://localhost.3000/game)


### User Stories

As a user, so that I can lose myself for a few minutes, I want to play a simple text based game.

As a user, so that I'm engaged, I want it to feel like a conversation.

### Challenges

Going back to rails after some time away was interesting, but the more I did the more I remembered. Database architect was also a struggle, but something that was overcome given enough time and thinking.

I had some trouble getting tests to run multiple times in a row. I solved this by running ```bin/rake db:reset db:seed``` after every test. This is not a fix, but I was spending too much time on a problem that didn't stop tests running entirely. I think I would use the database-cleaner gem to potentially solve this problem.

Unfortunately I didn't complete any of the admin features I wanted to add, but I have an idea of how to achieve these.
I would create an admin class using devise. There would be a check to see if there was a current user, ie. game can be played without signing in, that would enable an admin to edit the stories, add more or change the outcomes.
