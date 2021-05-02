User.create!(name:  "男",
             email: "Test1@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 0)
             
User.create!(name:  "女",
             email: "Test2@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 1)
             
User.create!(name:  "分からない",
             email: "Test3@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 2)
            
User.create!(name:  "性別無回答",
             email: "Test4@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             )

             
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
4.times do
  content = ["https://docs.google.com/forms/d/e/1FAIpQLSe2olFhlP-KxqH66GZAja28FVuR5lwTb7Do5_iIDndd69vmPw/viewform?usp=sf_link",
  "https://docs.google.com/forms/d/e/1FAIpQLSdCZQLmWr8yofWbcKQRvY790ekDGNSM9BbpqKr-yYquMfjvDg/viewform?usp=sf_link",
  "https://docs.google.com/forms/d/e/1FAIpQLSc7DoLXS6bNUb6zbboZt4_fBS5-LZfeNlRN9djjcA3F_2P1ZA/viewform?usp=sf_link",
  "https://docs.google.com/forms/d/e/1FAIpQLScJI8mjVm_xKxvl72xoJdeYiJZgu6JCol-uSD1FaAahodD-Bw/viewform?usp=sf_link"]
  
  users.each { |user| user.microposts.create!(content: content) }
end

