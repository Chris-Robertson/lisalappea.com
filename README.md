# LisaLappe.com
The source of lisalappea.com

Heroku url:
```
https://glacial-woodland-98272.herokuapp.com/
```

Day 1:
- Created Trello board
- Outlined project concept
- Listed project requirements
- Listed potential APIs
- Started writing user stories

Day 2:
- Worked with Lisa on writing user stories.
- Started planning database entities.
- Decided that 'news posts' and 'comments' can be the same table. If a comment doesn't have a item_id then it is a news post
- Spent far too much time trying to decide on wireframing and flowcharting software. Decided on Sketch, where I had started.

Day 3:
- Finished first version of the workflow sitemap using a Sketch template
- Got a good start on the wireframes in Sketch

Day 4:
- Spent far too much time getting a pixel-perfect flowchart.
- Wireframes are simple, as client is a designer and will have input later in process.
- The important thing is to have a wireframe for every page. This ensures gaps are identified early in the process.
- Decided to go with a simple 4-colour labelling system on Trello to indicate an action's difficulty
- Setup a postgresql development server locally using [Postgres.app](postgressapp.com)
- Created a new Rails instance with postgres as he database with:
```
$ rails new -d postgresql lisalappea.com
```
- Created the inital postgres databases with:
```
$ rails db:create
$ rails db:migrate
```
- Setup git repo on github.com and added:
  - .gitignore
  - README.md
  - LICENSE
- Initialise and deploy to Heroku with:
```
$ heroku create
$ git push heroku master
```
- Added the devise gem and ceated its user model
- Added bootstrap
- Created scaffolds for items, posts and profiles




## Tools
- http://uxchecklist.github.io/
- Trello
- Github
- Heroku
- Habatica

## Ideas
- Use https://github.com/activeadmin/activeadmin to build the admin panel
- Use https://github.com/spree/spree for the ecommerce of the site

## Disasters:
- Lost at least 12 user stories that I wrote into Trello on the train without an internet connection. In the future I will se their mobile app to add things to Trello.
