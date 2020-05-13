# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

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
