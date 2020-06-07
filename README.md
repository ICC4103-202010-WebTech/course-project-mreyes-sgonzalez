# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	To get things started you want to make sure your Ruby version matches the one specified on the gem file

* System dependencies
	To get all the necesary gems needed to run this proyect flawlessly you must execute in the commands section bundle install
* Configuration
	To set up the database hierarchy run rake db:migrate
* Database creation
	In order to set up the proyect database run te coomand rake db:setup
* Database initialization
	To populate the database with initial values run rake db:seed
* How to run the test suite
	To initialize the web server run rails s
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

7.-
We redo the entirety of the E-R model given for the first assignment and startet working from there, we made sure we had a working schematic and database,
making use of fake data given by the seed.rb file. after we were sure the structure of the programe made sense on its own, we started to implement the skeleton of the web 
server by adding HTML capable of redirecting itself between diferent views and displaying the information belonging to each view. For the elements of Events and Comments,
we added a RESTful API, where you can do actions such as view,create, edit and delete (verbs: GET,POST,PATCH,DELETE), because our service currently lacks html forms, all this
actions can be performed via request performed from postmanm link of the collection is included at the end of this file.
After all the functionality asked for this assignment was implemented, it was time to make it look more organized, so we added CSS with the help of Bootstrap to all
the application views.

We could not make de validations of HTML and CSS. We do not know how make the validations, we try many differents ways, but was impossible,
we suppouse the HTML and CSS are fine, because they work well. We did not show the comments replies and the messages, because this
was not especificated in this assignament and we do not know if this is necessary for this assignament.(we supposed the objective of this assignament were 
the events, comments, profiles, organizaions, home page, Postman)

Link Postman Project assignment #2:
https://www.getpostman.com/collections/3b725caec89f13a7193d

-----------------------------
In this part of the work we managed to better show the views of our website, 
as seen now is what an administrator should see within the web application.
For point 5 of the creation of the populate fake data we had problems with 
the implementation of these, therefore we enlarged the seed of our work, since 
they told us that we could do this in the forum.
We are missing being able to correctly add the comments in the event part, 
along with terminating the date voting in a functional way, in addition to the fact
 that the search engine will work with a subpart of the description or name (for the 
search engine to work you must enter the word and press enter as it appears there).
We still need to improve to make it work optimally:
-4.3
-4.4
-4.5
-4.6
-4.8
-5.3
and admin routes.

