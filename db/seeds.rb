require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def fakename
  name = Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.noun + " "
  return name + Faker::Hacker.verb + " " + Faker::Hacker.noun + "."
end

10.times do
  puts "coucou"
    Article.create(
      title: fakename,
      content: Faker::Lorem.paragraph(2),
  )
end
