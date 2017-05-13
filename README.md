# LisaLappea.com
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
- Added the devise gem and created its user model
- Added bootstrap
- Created scaffolds for items, posts and profiles

Day 5:
- Shortened the default devise routes, although my technique taken from the [devise documentation](https://github.com/plataformatec/devise/wiki/How-To:-Change-the-default-sign_in-and-sign_out-routes) seems to have generated redundant routes.
- Fixed and issue with the bootstrap navbar links having a black on hover rule. I think it might have come from the bootstrap4 devise gem I used. It seems like a bit of a waste of time, not hard to quickly throw bootstrap classes on a couple forms.
- Got the first usable version of the navbar in place. It has links to login and logout, but most of the others are just placeholders untill they have routes and views.
- Started working out a seed file to save mem time. Quick tip: when using postgres you need to shutdown the server AND quit rails console before you can drop or reset the database.
- I thought that the bootstrap devise gem was playing up. I decided to remove it. This was a huge mistake. I was initially working in a branch, but I completely messed it up by deleting too many files- I switched back to master but seemed to bring all the problems with me. So i did a git reset --hard master. This was terrible. Everything broke. From there I spent hours retracing my steps, deleting scaffolds and generating new ones, removing the traces of the uninstalled gem (which I don't think was actually causing any trouble). I very nearly deleted the whole project and started again, but I percevered and solved all the issues. Along the way I also learned some new terminal commands regarding the history, which I can see myself using frequently.
- I worked out how to seed all the user data (profile, items and posts), using the Faker gem. Very cool.
- I added a randomly generated avatar (thanks again Faker) to the user profile, and let the logged in user see their profile.
- I started working on the category page. I ended up figuring out how to find all the unique categories in the database, select a random item from each category, select a random photo from that item and then display them all on the categories page. Probably far too much effort for something that will probably mostly be replaced when the site has a few, fixed categories. It was a learning experience, nonetheless.
- Trying to display a graph of my git history with all the branches I had created, I discovered that the standard `git merge` command fastforwards the branch and merges all the commits. This means that my history just looks like one long `master` branch. This can be avaoided by running `git merge --no-ff` when merging. I will play around with this development process for the rest of the project.

- git clean **VERY DANGEROUS**
- be careful where you're editing your README file. Don't revert changes! Always commit!
## Tools
- http://uxchecklist.github.io/
- Trello
- Github
- Heroku
- Habatica
- https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails

## Gems
- bootstrap
- devise
- faker

## Ideas
- Use https://github.com/activeadmin/activeadmin to build the admin panel
- Use https://github.com/spree/spree for the ecommerce of the site

## Disasters:
- Lost at least 12 user stories that I wrote into Trello on the train without an internet connection. In the future I will se their mobile app to add things to Trello.
- The whole 'uninstall bootstrap-devise-views' kerfuffle.
