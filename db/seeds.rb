# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do 
# 	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, age: rand(20..50))
# end

# 10.times do
# 	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
# end

# User.all.each{|user| user.update(city: City.all.sample)}

# 10.times do
# 	Gossip.create(title: Faker::Hipster.sentence(word_count: 3), content: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true), user_id: User.ids.sample)
# end

# 10.times do
# 	Tag.create(title: "##{Faker::Hipster.word}")
# end

# Gossip.all.each do |gossip|
# 	n = rand(1..3)
# 	n.times do
# 		GossipTagLink.create(gossip: gossip, tag: Tag.all.sample)
# 	end
# end
10.times do
	PrivateMessage.create(content: Faker::Hipster.paragraph_by_chars, sender: User.all.sample, recipient: User.all.sample)
end