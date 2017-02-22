@user = User.create(email: 'teste@test.com', password: '123456', password_confirmation: '123456', first_name: 'Jon', last_name: 'Doe')
puts "User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content",user_id: @user.id)
end

puts "100 posts created"
