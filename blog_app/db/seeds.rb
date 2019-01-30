require 'faker'

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

5.times do
	cat = Category.create!(name: Faker::Food.dish)
end

10.times do
	article = Article.create!(user_id: rand(1..10), category_id: rand(1..5), title: Faker::RuPaul.queen, content: Faker::RuPaul.quote)
end

15.times do
	com = Comment.create!(user_id: rand(1..10), article_id: rand(1..10), content: Faker::GreekPhilosophers.quote)
end

15.times do
  l = Like.create!(user_id: rand(1..10), article_id: rand(1..10))
end