# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Started seed"
puts "Emptying DB!"

Task.destroy_all

# status = %w(true false)
status = [true, false]
10.times do
  tasks = Task.new(name: Faker::Simpsons.character, description: Faker::Simpsons.quote, status: status.sample)

  puts "#{tasks.name} #{tasks.status} saved!" if tasks.save
end

puts "Seeding finished!"
