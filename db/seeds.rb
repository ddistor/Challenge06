# frozen_string_literal: true

Customer.destroy_all

NUMBER_OF_CUSTOMERS = 5

NUMBER_OF_CUSTOMERS.times do |index|
  puts index
  if index < 3
    Customer.create(
      full_name: Faker::Name.unique.name,
      phone_number: Faker::PhoneNumber.unique.phone_number,
      email_address: Faker::Internet.unique.email,
      notes: Faker::Lorem.paragraph
    )
  else
    Customer.create(
      full_name: 'Faker::Name.unique.name',
      phone_number: Faker::PhoneNumber.unique.phone_number,
      email_address: '',
      notes: Faker::Lorem.paragraph
    )
  end
end

puts "Created #{Customer.count} Customers."

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
