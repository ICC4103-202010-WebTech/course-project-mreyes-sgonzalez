# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# USERS
  user1 = User.create!(email: "email1@gmail.com", password: "abc12d3", username: "username1", admin: true)
user2 = User.create!(email: "email2@gmail.com", password: "abc12e3", username: "username2", admin: false)
user3 = User.create!(email: "email3@gmail.com", password: "abc1w23", username: "username3", admin: false)
user4 = User.create!(email: "email4@gmail.com", password: "abc12e3", username: "username4", admin: false)

user5 = User.create!(email: "email5@gmail.com", password: "abc12d3", username: "username5", admin: false)
user6 = User.create!(email: "email6@gmail.com", password: "abc12e3", username: "username6", admin: false)
user7 = User.create!(email: "email7@gmail.com", password: "abc1w23", username: "username7", admin: false)
user8 = User.create!(email: "email8@gmail.com", password: "abc12e3", username: "username8", admin: false)

# PROFILE
profile1 = Profile.create!(user_id: user1.id, name: "Tom", last_name: "LastN1", phone: "12365478", dob: Date.new(2020, 01, 01), address: "way1")
profile2 = Profile.create!(user_id: user2.id, name: "Bob", last_name: "LastN2", phone: "98732154", dob: Date.new(2020, 01, 01), address: "way2")
profile3 = Profile.create!(user_id: user3.id, name: "Tim", last_name: "LastN3", phone: "64123987", dob: Date.new(2020, 01, 01), address: "way3")
profile4 = Profile.create!(user_id: user4.id, name: "Luke", last_name: "LastN4", phone: "82789123", dob: Date.new(2020, 01, 01), address: "way4")

profile5 = Profile.create!(user_id: user5.id, name: "Tommy", last_name: "Shelby", phone: "12365478", dob: Date.new(2020, 01, 01), address: "way5")
profile6 = Profile.create!(user_id: user6.id, name: "Matt", last_name: "Willy", phone: "98732154", dob: Date.new(2020, 01, 01), address: "way6")
profile7 = Profile.create!(user_id: user7.id, name: "Timoti", last_name: "Nock", phone: "64123987", dob: Date.new(2020, 01, 01), address: "way7")
profile8 = Profile.create!(user_id: user8.id, name: "Rodolf", last_name: "Kings", phone: "82789123", dob: Date.new(2020, 01, 01), address: "way8")

# MESSAGE_USER_ID
message_user_id1 = MessageUser.create!(user_id: user2.id)
message_user_id2 = MessageUser.create!(user_id: user1.id)

# MESSAGE
message1 = Message.create!(user_id: user1.id, message: "Hello", message_user_id: message_user_id1.id)
message2 = Message.create!(user_id: user2.id, message: "Hello", message_user_id: message_user_id2.id)

# RESOURCE
resource1 = Resource.create!(file_type: ".pdf", file: "SomeFile1")
resource2 = Resource.create!(file_type: ".pdf", file: "SomeFile2")
resource3 = Resource.create!(file_type: ".txt", file: "SomeFile3")
resource4 = Resource.create!(file_type: ".png", file: "SomeFile4")
resource5 = Resource.create!(file_type: ".png", file: "SomeFile5")
resource6 = Resource.create!(file_type: ".txt", file: "SomeFile6")

# ORGANIZATION
organization1 = Organization.create!(name: "organization1", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource1)
organization2 = Organization.create!(name: "organization2", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource2)

organization3 = Organization.create!(name: "The Top", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource1)
organization4 = Organization.create!(name: "Old time", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource2)
organization5 = Organization.create!(name: "Warzone", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource1)
organization6 = Organization.create!(name: "Call of Duty", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource2)
organization7 = Organization.create!(name: "Members tnt", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource1)
organization8 = Organization.create!(name: "Bad boys", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran",resource_id: resource2)

# MEMBER
member1 = Member.create!(user_id: user1.id, organization_id: organization1.id, rol: "user")
member2 = Member.create!(user_id: user2.id, organization_id: organization1.id, rol: "member")
member3 = Member.create!(user_id: user3.id, organization_id: organization1.id, rol: "member")
member4 = Member.create!(user_id: user1.id, organization_id: organization2.id, rol: "member")
member5 = Member.create!(user_id: user4.id, organization_id: organization2.id, rol: "admin")
member6 = Member.create!(user_id: user3.id, organization_id: organization2.id, rol: "member")

# EVENT
event1 = Event.create!(title: "La momia", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user1.id, private: true, resource_id: resource2.id, location: "new york", date: DateTime.new(2020, 4, 20, 4, 30))
event2 = Event.create!(title: "Busqueda del tesoro", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user1.id, private: true, resource_id: resource4.id, location: "Alabama", date: DateTime.new(2020, 4, 20, 4, 30))
event3 = Event.create!(title: "Tarzan", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user1.id, private: true, resource_id: resource2.id, location: "San Francisco", date: DateTime.new(2020, 4, 20, 4, 30))
event4 = Event.create!(title: "Mas barato por docena", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Las Vegas", date: DateTime.new(2020, 4, 20, 4, 30))
event5 = Event.create!(title: "Tiburon", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user2.id, private: true, resource_id: resource2.id, location: "Lake Tahoe", date: DateTime.new(2020, 4, 20, 4, 30))
event6 = Event.create!(title: "Proyecto x", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Davis", date: DateTime.new(2020, 4, 20, 4, 30))
event7 = Event.create!(title: "Destruccion total", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user3.id, private: true, resource_id: resource2.id, location: "San Diego", date: DateTime.new(2020, 4, 20, 4, 30))
event8 = Event.create!(title: "Hata el amanecer", description: "Describir es explicar, de manera detallada y ordenada, cómo son las personas, animales, lugares, objetos, etc. La descripción sirve sobre todo para ambientar la acción y crear una que haga más creíbles los hechos que se narran", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Sausalito", date: DateTime.new(2020, 4, 20, 4, 30))

# DATE_OPTION
date_option1 = DateOption.create!(start_date: DateTime.new(2020, 4, 20, 4, 30), end_date: DateTime.new(2020, 4, 20, 6, 30), event_id:event1.id)
date_option2 = DateOption.create!(start_date: DateTime.new(2020, 5, 20, 4, 30), end_date: DateTime.new(2020, 5, 20, 6, 30), event_id:event2.id)
date_option3 = DateOption.create!(start_date: DateTime.new(2020, 4, 21, 4, 30), end_date: DateTime.new(2020, 4, 21, 6, 30), event_id:event3.id)
date_option4 = DateOption.create!(start_date: DateTime.new(2020, 5, 21, 4, 30), end_date: DateTime.new(2020, 5, 21, 6, 30), event_id:event4.id)


# EVENT_LIST_USER
elu1 = EventListUser.create!(user_id: user1.id, event_id: event1.id)
elu2 = EventListUser.create!(user_id: user2.id, event_id: event1.id)
elu3 = EventListUser.create!(user_id: user3.id, event_id: event3.id)
elu4 = EventListUser.create!(user_id: user4.id, event_id: event1.id)
elu5 = EventListUser.create!(user_id: user5.id, event_id: event2.id)
elu6 = EventListUser.create!(user_id: user6.id, event_id: event2.id)
elu7 = EventListUser.create!(user_id: user7.id, event_id: event3.id)
elu8 = EventListUser.create!(user_id: user8.id, event_id: event2.id)
elu9 = EventListUser.create!(user_id: user1.id, event_id: event3.id)
elu10 = EventListUser.create!(user_id: user1.id, event_id: event4.id)
elu11 = EventListUser.create!(user_id: user2.id, event_id: event6.id)
elu12 = EventListUser.create!(user_id: user5.id, event_id: event7.id)
elu13 = EventListUser.create!(user_id: user6.id, event_id: event8.id)
elu14 = EventListUser.create!(user_id: user6.id, event_id: event7.id)

# EVENT_LIST_ORGANIZATION
elo1 = EventListOrganization.create!(organization_id: organization1.id, event_id: event2.id)
elo2 = EventListOrganization.create!(organization_id: organization2.id, event_id: event3.id)
elo3 = EventListOrganization.create!(organization_id: organization3.id, event_id: event4.id)
elo4 = EventListOrganization.create!(organization_id: organization4.id, event_id: event5.id)

# DATE_VOTE
dv1 = DateVote.create!(user_id: user1.id, date_option_id: date_option1.id)
dv2 = DateVote.create!(user_id: user2.id, date_option_id: date_option1.id)
dv3 = DateVote.create!(user_id: user2.id, date_option_id: date_option3.id)
dv4 = DateVote.create!(user_id: user1.id, date_option_id: date_option4.id)
dv5 = DateVote.create!(user_id: user3.id, date_option_id: date_option4.id)
dv1 = DateVote.create!(user_id: user4.id, date_option_id: date_option3.id)

# COMMENT
comment1 = Comment.create!(user_id: user1.id, text_comment: "nice event", event_id: event1.id)
comment2 = Comment.create!(user_id: user2.id, text_comment: "hi this is a super text", event_id: event1.id)
comment3 = Comment.create!(user_id: user3.id, text_comment: "Good Bye", event_id: event2.id)

comment4 = Comment.create!(user_id: user2.id, text_comment: "Good idea", event_id: event2.id)
comment5 = Comment.create!(user_id: user3.id, text_comment: "hi this is a a boom", event_id: event4.id)
comment6 = Comment.create!(user_id: user4.id, text_comment: "can i invite someone", event_id: event1.id)
comment7 = Comment.create!(user_id: user5.id, text_comment: "woooo this is amazing", event_id: event1.id)
comment8 = Comment.create!(user_id: user2.id, text_comment: "supeeer cool", event_id: event2.id)
comment9 = Comment.create!(user_id: user2.id, text_comment: "uuuuup", event_id: event2.id)


# COMMENT_REPLY
comment_reply2 = CommentReply.create!(user_id: user2.id, text_comment_reply: "hi my name is ah my name is ah", comment_id: comment2.id)
comment_reply1 = CommentReply.create!(user_id: user1.id, text_comment_reply: "this is a text", comment_id: comment1.id)
