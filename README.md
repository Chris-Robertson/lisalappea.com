# LisaLappea.com
### *A place to buy and sell unique, sustainable jewellery*

[lisalappea.com on Heroku](https://lisalappea.herokuapp.com/)

# TABLE OF CONTENTS

### Problems Being Solved
My client is a jewellery maker who sells her jewellery online. She has encountered several pain points:
- Initaially listing her products on third-party sites such as [Etsy](https://www.etsy.com/au/c/jewelry?ref=catnav-1179), she found there to be complete over-saturation of the market. It was very hard to get exposure on these platforms.
- My client was heavily involved in her local artist scene and discovered that many potential customers where interested in purchasing items created locally to themselves. This was hard to do on the larger sites.
- She also found a growing interest in sustainable goods. These were even harder to find on the large sites.
- Deciding to create her own website, she used some 'build-your-own' hosting services such at [Squarespace](https://www.squarespace.com/), [Shopify](https://www.shopify.com.au/) and [Weebly](https://www.weebly.com/au). These services were found to be expensive, lacking custom features and still difficult for non-technical people to set up the wy they wanted.

To solve these pain points, my client decided to enlist my services to build a custom site to her specifications. The site is to be a platform where a curated selection of local artist can sell their creating to a discerning group of customers interested in sustainable, handmade crafts.

### Workflow Diagram
A complete workflow diagram was created using [Sketch](https://www.sketchapp.com/). This diagram was invaluable in the early stages of the disign process. Using it I ensured that every feature required for the site was acccounted for, and that there was a sensible flow around the site.

Unfortunately, due to a disastarous file management oversight, this workflow diagram was lost when a git branch was deleted and cleaned. The below screen shot is all that remains.

![Workflow Diagram](docs/images/workflow_diagram.png)

### Wireframes
Useing the above workflow diagrarm, I started working on the wireframes for the site. As I knew that the client would ultimately be having a loarge input into the design of the site, I triend to keep the wireframes simple and minimal.

![Wireframes](docs/images/wireframes.png)

The Sketch project file can be found [here](docs/lisalappea_wireframes.sketch).

### User Stories
Working closely with the client I was able to develop a large list of the features required for the first implementation of the site to go live. Using this list I wrote the following user stories. These stories were used as the basis for all feature sprints.

**These user stories can all be found on the [Trello board](https://trello.com/b/MNmRKRxm).**

- As a jewellery maker, I want to be able to list my products on a website in order to sell them.
- As a jewellery seller, I want to be notified when I make a sale, so I can quickly respond and ship the item.
- As a jewellery buyer, I want to be able to communicate with sellers in order to ask questions about items.
- As a jewellery buyer, I want to be able to save items to a wishlist so that I can access them again easily.
- As a jewellery seller, I want to be able to communicate with users via email, in order to let them know about new items and specials.
- As a jewellery buyer, I want to be able to sort and search through the items, in order to find what I want easier.
- As a jewellery seller, I want to be able to categorise my listings in order to better organise them and make them easier to browse through.
- As a jewellery seller, I want to be able to upload photos of my items in order to show them to users.
- As a jewellery seller, I want to have a profile with contact details and links to my social media, so that I can gain followers and communicate with them.
- As a site admin, I want to be able to add news posts, in order to keep users informed about changes.
- As a jewellery buyer, I want to receive email receipts of purchases in order to track my purchases.
- As a jewellery seller I want to be able to add options to items, in order to offer buyers different materials etc.
- As a jewellery seller, I want to be able to see information about my items, in order to track sales and views.
- As a jewellery buyer, I want access to multiple payment options, so that I won't feel restricted in my options.
- As a jewellery seller, I want add descriptions of my items so I can inform buyers of materials, size, care instructions etc.
- As a jewellery seller I want to be able to offer discount codes in order to promote my products.

### Entity Relationship Diagram
With the user stories and the workflow diagram I wa able to design the database tables and relationships for the site. I used the online tool [DbDesigner](http://dbdesigner.net/) to visualise the structure of the database.

![ERD](docs/images/erd.png)

### Project Plan And Estimation

This project had a very tight deadline of about 12 days. Below is the initial time budget I designed for the project.

### Activity | Time Budget
---------|------------
Pain Points / User stories | 1 day
Workflow Diagram | 1.5 days
Wireframes | 1.5 days
Entity Relationship Diagram | 1 day
**Planning Phase Total** | **5 days**
Rails project scaffolding | 1 day
Bootstrap/Devise setup | 1 day
Database seeding | 0.5 days
Basic styling | 0.5 days
Payment API Configuration | 1 day
Additional APIs | 2 days
Testing and Review | 1 day
**Build Phase Total** | **7 days**

The planning phase went by without a hitch. The hardest decision I had to mmake was which wireframing and prototyping software to use. I had used [Figma](https://www.figma.com) on previous projects but decided to go with [Sketch](https://www.sketchapp.com/) do get experience with what seems to be the industry standard software. I was very happy with my choice and will probably stick with Sketch for future projects.

Moving on to the build phase of the project, the first day or so went smoothly. As I had spent a large amount of time planning and had a detailed ERD and workflow diagram, the initial Rails project setup of scaffolding and routing was failry straightforward. I identified many issues in the planning phase that were easily worked out that would have caused serious issues if not discovered until the build phase.

Moving farther aloing in the build process I encoutered issues that I had not forseen. The major one being the shopping cart implementation. During planning I had identified a shopping cart system as being critical to the MVP, but had not thought about how exactly it would be implemented. This turned into a major hurdle as I knew it was a critical feature and the project could not move forward without it. Initially I tried to implement the cart completely in Ruy and Rails, but was unable to get it to work. I then spent some time researching common solutions and discovered [Spree](https://spreecommerce.com/), a gem that implements an entire ecommerce solution. I found that Spree was a very popular solution for this problem and I went about integrating it in to the project.

The Spree integration took far longer than I had thought it would. I did learn a lot about third party gem integration, including how to remove gems and reconfigure your application. In the end, I managed to install Spree into the project. Once spree was installed I started looking through the code and realised it would take me days, maybe an entire week, to configure it into somehting usable for the site. Being days behind my schedule already I decided to scrap the Spree gem and revert the project.

During this process of removing Spree and reverting the repository I made a few major mistakes in my handling of git branches and lost a not insignificant amount of my work. Needless to say, they are not mistakes that I will make again. Hopefully.

After moving away from the Spree option I discovered [this tutorial](https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails) on implementing a shopping cart in Rails with just a small amount of AJAX. This shopping cart system was finally implemented, but at this stage the project was hugely behind its already cramped schedule and I was not able to implement many of the other features I had planned.

As this is an actual product that will eventually be deployed, I will continue to work on it using the Trello board to manage priorities.

During this project I learned a great deal about Ruby on Rails and am confident that I will be able to get projects up and running a lot quicker in the future.

### Tools And Methodologies

#### Trello
[Trello board](https://trello.com/b/MNmRKRxm)
I used Trello extensively throughout this project. I find it an invaluable tool for keeping track of what needs to be done and breaking problems down into little pieces that can easily be worked on. 

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
