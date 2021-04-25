User.create!(name:  "Tomoya Nakabayashi",
             email: "tomochuro731@gmail.com",
             password:              "nakaba8739",
             password_confirmation: "nakaba8739",
             admin:true,
             activated:true,
             activated_at: Time.zone.now)
             
User.create!(name:  "TestUser",
             email: "Test@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now)

             
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = "https://docs.google.com/forms/d/e/1FAIpQLScXnLRWaSvlwJyPq8XG2ZTFSxFBc_FPeleYfOjErCUeTWG1WQ/viewform?usp=sf_link"
  users.each { |user| user.microposts.create!(content: content) }
end

