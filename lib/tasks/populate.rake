namespace :populate do
  desc "Generate 50 Trips"
  task trips: :environment do
    
    user = User.first
    if user
      50.times do 
        user.trips.create(trip_name: Faker::Address.country,
                          description: Faker::Hipster.sentence,
                          budget: Faker::Number.between(500, 10000),
                          people_going: Faker::Number.number)
      end
    else 
      raise 'No First User In The Database'
    end 
  end

end
