require "faker"

puts "🌱 Seeding spices..."

# Seed your database here
10.times do
  Customer.create(name: Faker::Name.name)
end

Employee.create(name: "Jesse")
Employee.create(name: "Joseph")
Review.create(body: "Good job!", customer_id: customer.id, employee_id: employee.id)


puts "✅ Done seeding!"
