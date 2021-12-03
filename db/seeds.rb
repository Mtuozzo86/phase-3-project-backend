require "faker"

puts "🌱 Seeding spices..."

# Seed your database here
10.times do
  Customer.create(name: Faker::Name.name)
end

Employee.create(name: "Jesse")
Employee.create(name: "Joseph")
Barbershop.create(name: "Brother Cuts")

puts "✅ Done seeding!"
