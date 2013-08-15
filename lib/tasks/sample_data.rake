namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    content = Faker::Lorem.sentence(5)
    User.create!(first_name: "Petar",
                 last_name: "Ivacic",
                 email: "petar.ivacic@me.com",
                 password: "Beograd1",
                 password_confirmation: "Beograd1",
                 bio: content,
                 tag_line: content)
    
    #99.times do |n|
     # first_name  = Faker::Name.first_name
      #last_name = Faker::Name.last_name
      #email = "example-#{n+1}@vork.com"
      #password  = "Beograd1"
      #User.create!(first_name: first_name,
       #            last_name: last_name, 
        #           email: email,
         #          password: password,
          #         password_confirmation: password)
    #end

    #users = User.all(limit: 6)
    #50.times do
     # content = Faker::Lorem.sentence(5)
      #users.each { |user| user.microposts.create!(content: content) }
    #end

  end
  
end