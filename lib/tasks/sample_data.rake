namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Rake::Task['db:reset'].invoke
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
  tag = "Fearless, forward-thinking individual with social entrepreneurship mindset."
  bio = 'Engineer, programmer and a big nerd. Differential calculus is a 
  part of my nature so i often get myself into "non-linear" 
  situations.I was a member of Serbian National Rowing Team and I rowed in 
  college for 4 years.'

  User.create!( first_name: "Petar",
                last_name: "Ivacic",
                email: "petar.ivacic@me.com",
                password: "Beograd1",
                password_confirmation: "Beograd1",
                bio: bio,
                tag_line: tag)
   99.times do |n|
    first_name  = Faker::Name.first_name
    last_name = Faker::Name.last_name

    email = first_name + "." + last_name + "@vork.com"
    password  = "Beograd1"
    content = Faker::Lorem.sentence(5)
    User.create!(first_name: first_name,
                 last_name: last_name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end


  def make_microposts
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end

  def make_relationships
    users = User.all
    user  = users.first
    followed_users = users[2..50]
    followers      = users[3..40]
    followed_users.each { |followed| user.follow!(followed) }
    followers.each      { |follower| follower.follow!(user) }
  end



  
