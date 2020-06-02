FactoryBot.define do

  factory :random_user, class: User do
    username {Faker::Internet.username}
    password {Faker::Internet.password}
    email {Faker::Internet.safe_email}
    admin {Faker::Boolean}
  end

  factory :random_profile, class: Profile do
    association :user, factory: :random_user.id
    name {Faker::Name.name}
    last_name {Faker::Name.last_name}
    phone {Faker::PhoneNumber.cell_phone}
    dob {Faker::Date.birthday}
    adress {Faker::Address.street_address}
  end

  factory :random_organization, class: Organization do
    name {Faker::Company.name}
    description {Faker::Text}
    association :resource, factory: :random_resource.id
  end

  factory :random_message, class: Message do
    #TODO: Check message-message_reply in E-R
  end

  factory :random_member, class: Member do
    association :user, factory: :random_user.id
    association :organization, factory: :random_organization.id
    rol {Faker::Job.position}
  end

  factory :random_event_list_user, class: EventListUser do
    association :user, factory: :random_user.id
    association :event, factory: :random_event.id
  end

  factory :random_event_list_organization, class: EventListOrganization do
    association :organization, factory: :random_organization.id
    association :event, factory: :random_event.id

  end

  factory :random_event, class: Event do
    title {Faker::Cannabis.strain}
    description {Faker::Text}
    event_flag {Faker::Boolean}
    association :user_id, factory: :user.id
    private {Faker::Boolean}
    association :resource_id, factory: :random_resource.id
  end

  factory :random_date_vote, class: DateVote do
    association :user_id, factory: :random_user.id
    association :date_option_id, factory: :random_date_option
  end

  factory :random_date_option, class: DateOption do
    association :event_id, factory: :random_event.id
    start_date {Faker::Date.between(from: today, to: 60.days.from_now)}
    end_date {Faker::Date.between(from: start_date, to: start_date + 5)}

  end

  factory :random_comment, class: Comment do
    association :user_id, factory: :random_user.id
    association :event_id, factory: :random_event.id
    comment {Faker::Text}
  end

  factory :random_comment_reply, class: CommentReply do
    association :user_id, factory: :random_user.id
    association :comment_id, factory: :random_comment.id
    comment {Faker::Text}
  end

  factory :random_resource, class: Resource do
    type {Faker::File.extension}
    file {Faker::File.name}
  end

end

