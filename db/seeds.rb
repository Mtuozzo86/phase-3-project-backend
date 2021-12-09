require "faker"

puts "🌱 Seeding spices..."

# Seed your database here
<<<<<<< HEAD
=======
10.times do
  Customer.create(name: Faker::Name.name, employee_id: rand(1..2))
end

Employee.create(name: "Jesse")
Employee.create(name: "Joseph")
>>>>>>> 11272dbcd70e3c8c0d4f1762f8dd632af94c6c97

employee = Employee.create(name: "Jesse")
employee2 = Employee.create(name: "Joe")

3.times do
  Customer.create(name: Faker::Name.name)
end
3.times do
  Customer.create(name: Faker::Name.name)
end

puts "✅ Done seeding!"
