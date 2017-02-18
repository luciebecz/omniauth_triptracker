namespace :user2population do
  desc "Generate 50 trips, with all fields"
  task trips: :environment do
    user = User.first
    if user
      50.times do 
        user.trips.create(trip_name: Faker::Address.country,
                          description: Faker::Hipster.sentence,
                          budget: Faker::Number.between(500, 10000),
                          people_going: Faker::Number.number,
                          )
      end
    else 
      raise 'No Last User In Database'
    end 
  end 

end
