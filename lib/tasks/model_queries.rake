namespace :db do
  task :populate_fake_data => :environment do
    # If you are curious, you may check out the file
    # RAILS_ROOT/test/factories.rb to see how fake
    # model data is created using the Faker and
    # FactoryBot gems.
    puts "Populating database"
    #Generate 50 new users
    create_list(:random_user, 50)









  end
  task :model_queries => :environment do
    # Sample query: Get the names of the events available and print them out.
    # Always print out a title for your query
    puts("Query 0: Sample query; show the names of the events available")
    result = Event.select(:name).distinct.map { |x| x.name }
    puts(result)
    puts("EOQ") # End Of Query -- always add this line after a query.
  end
end
