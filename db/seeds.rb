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
                  tracking_number: "IH3AR71C3CR3AM")
end

# create requests
Request.create!(requester_id: 1,
                acceptor_id: 2,
                package_id: 1)

Request.create!(requester_id: 4,
                acceptor_id: 4,
                package_id: 2)

Request.create!(requester_id: 8,
                acceptor_id: 9,
                package_id: 3)
