require "faker"

puts "🌱 Seeding spices..."

# Seed your database here
10.times do
  Customer.create(name: Faker::Name.name, employee_id: rand(1..2))
end

Employee.create(name: "Jesse")
Employee.create(name: "Joseph")



puts "✅ Done seeding!"
