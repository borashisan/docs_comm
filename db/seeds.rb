User.create!(name:  "男性テストユーザー",
             email: "Test1@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 0)
             
User.create!(name:  "女性テストユーザー",
             email: "Test2@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 1)
             
User.create!(name:  "ノンバイナリーテストユーザー",
             email: "Test3@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             sex: 2)
            
User.create!(name:  "テストユーザー",
             email: "Test4@gmail.com",
             password:              "testuser",
             password_confirmation: "testuser",
             admin:true,
             activated:true,
             activated_at: Time.zone.now,
             )

             
50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  sex = rand(0..2)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated:true,
               sex: sex)
end

users = User.order(:created_at).take(6)


5.times do
  content = "https://docs.google.com/forms/d/e/1FAIpQLSe2olFhlP-KxqH66GZAja28FVuR5lwTb7Do5_iIDndd69vmPw/viewform?usp=sf_link"
  
  users.each { |user| user.microposts.create!(content: content) }
end

Micropost.create!(content: "https://docs.google.com/forms/d/e/1FAIpQLSdCZQLmWr8yofWbcKQRvY790ekDGNSM9BbpqKr-yYquMfjvDg/viewform?usp=sf_link",
                  user_id: 1,
                  micropost_sex: 0)
Micropost.create!(content: "https://docs.google.com/forms/d/e/1FAIpQLSc7DoLXS6bNUb6zbboZt4_fBS5-LZfeNlRN9djjcA3F_2P1ZA/viewform?usp=sf_link",
                  user_id: 2,
                  micropost_sex: 1)
Micropost.create!(content: "https://docs.google.com/forms/d/e/1FAIpQLScJI8mjVm_xKxvl72xoJdeYiJZgu6JCol-uSD1FaAahodD-Bw/viewform?usp=sf_link",
                  user_id: 3,
                  micropost_sex: 2)

