User.create!(name:  "TestUser",
             email: "Test@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 0)

             
10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  sex = rand(0..2)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               sex: sex)
end

users = User.order(:created_at).take(6)
5.times do
  content = "https://docs.google.com/forms/d/e/1FAIpQLSe2olFhlP-KxqH66GZAja28FVuR5lwTb7Do5_iIDndd69vmPw/viewform?usp=sf_link"
  users.each { |user| user.microposts.create!(content: content) }
end

