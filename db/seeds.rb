# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

rng = Random.new

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.number(2), citie_id: Citie.all.ids.sample)
end

10.times do
  user1 = Citie.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode)
end

10.times do
  user2 = Gossip.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.sentence, date: Faker::Time.between(DateTime.now - 1, DateTime.now), user_id: User.all.ids.sample)
end

10.times do
  users3 = Tag.create!(title: Faker::Lorem.sentence, gossip_id: Gossip.all.ids.sample) 
end
# 5.times do
#   catego = Categorie.create!(name: Faker::Games::Pokemon.move)
# end
# 10.times do
#     article = Post.create!(title: Faker::Games::WorldOfWarcraft.hero, content: Faker::Games::WorldOfWarcraft.quote, user_id: User.all.ids.sample, categorie_id: Category.all.ids.sample)
# end
# 15.times do
#   comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.all.ids.sample, post_id: Article.all.ids.sample)
#   like = Like.create!(user_id: User.all.ids.sample, post_id: Article.all.ids.sample)
# end


# rng = Random.new

# 10.times do
#   user = User.create!(first_name: Faker::Games::Pokemon.name, last_name: Faker::Food.dish, email: Faker::Internet.email)
# end
# 5.times do
#   categorie = Category.create!(name: Faker::Games::Pokemon.move)
# end
# 10.times do
#     article = Article.create!(title: Faker::Games::WorldOfWarcraft.hero, content: Faker::Games::WorldOfWarcraft.quote, user_id: User.all.ids.sample, category_id: Category.all.ids.sample)
# end
# 15.times do
#   comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
#   like = Like.create!(user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
# end