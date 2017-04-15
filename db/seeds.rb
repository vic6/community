Apartment.create!(name: "Kirkland Vista")
#
# create 10 tenants
(1..10).each do |num|
  Tenant.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 apt_number: num,
                 apartment_id: 1)
end

# create 50 packages
50.times do
  Package.create!(name: Faker::Commerce.product_name,
                  # grab random tenant
                  tracking_number: "IH3AR71C3CR3AM")
end

# create pending packages
