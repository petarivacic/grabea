namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    99.times do |n|
      first_name  = Faker::Name.first_name
      last_name = Faker::Name.last_name
      email = "example-#{n+1}@vork.com"
      password  = "Beograd1"
      User.create!(first_name: first_name,
                   last_name: last_name, 
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end