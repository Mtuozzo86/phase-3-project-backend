require "faker"

puts "🌱 Seeding spices..."

# Seed your database here

employee = Employee.create(name: "Jesse")
employee2 = Employee.create(name: "Joe")

# 3.times do
#   Customer.create(name: Faker::Name.name)
# end
# 3.times do
#   Customer.create(name: Faker::Name.name)
# end

puts "✅ Done seeding!"
