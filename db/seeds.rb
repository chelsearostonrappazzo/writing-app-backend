# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(name: "Rostonteaparty", email: "rostonteaparty@example.com", password_digest: BCrypt::Password.create("password"))

# Story.create!(title: "A Lady Displaced", description: "When the Awakened begin to unleash their terror on London, our fearless heroine must use her skills to sniff out the Creator as she did back home in Baltimore.", user_id: 1)

# Character.create!(name: "Luella Gardiner", age: 25, description: "Heroine and transplant to London. She loves her investigation partner despite him being married. She eschews using magick and has a penchant for gaudy clothes.", story_id: 1)

# Chapter.create!(title: "In Which the Heroine Stumbles Upon a Dead Body", json: "
#   'Blast and Damnation,' muttered Ms. Luella Gardiner, clutching a handkerchief to her nose. The stench crept in through the fine lawn confection. Damn those street hawkers and their enchantments! That would be the last time she listened to their siren calls on her way to the Bureau.
#   'Are you alright, Ms. Gardiner?' Her partner's tone was his usual--barely controlled vexation. And usually at her expense. Mr. Owen Keating stood over a desiccated corpse, the tips of his wingtip shoes encroaching on the pool of blood. He looked to her sharply, green eyes narrowing on the wobbly state of her legs.
#   ", story_id: 1)

# Party.create!(name: "Gaslight Me")

# PartyMember.create!(user_id: 1, party_id: 1)


seed_file = Rails.root.join('db', 'seeds', 'archetypes.yaml')
config = YAML::load_file(seed_file)

config.map do |conf|
  Archetype.create!(name: conf)
end

seed_file = Rails.root.join('db', 'seeds', 'tropes.yaml')
config = YAML::load_file(seed_file)

config.map do |conf|
  Trope.create!(name: conf)
end

seed_file = Rails.root.join('db', 'seeds', 'settings.yaml')
config = YAML::load_file(seed_file)

config.map do |conf|
  Setting.create!(name: conf)
end
