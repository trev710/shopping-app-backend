# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting data..."
Customer.destroy_all
Penguin.destroy_all

puts "Seeding Customer(s)"
bobby = Customer.create(username: "bobbyboy", password: "safepassword")

puts "Seeding Penguins"
penguin1 = Penguin.create(name: "African Penguin", origin: "South Africa", price: 2000, bio: "A very large boy", shelter: "Tim Tim's Animals", customer_id: bobby.id, image_url: "http://cincinnatizoo.org/system/assets/uploads/2020/08/charlie.jpg")

penguin2 = Penguin.create(name: "King Penguin", origin: "Antarctica", price: 7000, bio: "Has the largest breeding cycle of any bird (16 months)", shelter: "Uncle Jay's Wildlife Rescue", customer_id: bobby.id, image_url: "https://www.antarctica.gov.au/site/assets/files/45567/rs31765_kings_in_waves_gg_feb_2016_kk.1600x0.jpg")

penguin3 = Penguin.create(name: "Macaroni Penguin", origin: "Antarctic Peninsula", price: 3000, bio: "Loves Soul Food", shelter: "Tim Tim's Animals", customer_id: bobby.id, image_url: "https://s3-eu-west-1.amazonaws.com/folly-farm.co.uk/uploads/2018/05/macaroni-penguin-3.jpg")

penguin4 = Penguin.create(name: "Emperor Penguin", origin: "Antarctica", price: 15000, bio: "Tallest and heaviest of all living penguins", shelter: "Penguin Rescue", customer_id: bobby.id, image_url: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/362635561/900")

penguin5 = Penguin.create(name: "Adélie penguin", origin: "Antarctica", price: 9000, bio: "Most widely spread penguin species", shelter: "Tim Tim's Animals", customer_id: bobby.id, image_url: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/362643271/1800")

penguin6 = Penguin.create(name: "Galapagos Penguin", origin: "Galapagos Islands", price: 3200, bio: "Voted Cutest Penguin", shelter: "Uncle Jay's Wildlife Rescue", customer_id: bobby.id, image_url: "https://www.discoveringgalapagos.org.uk/wp-content/uploads/2014/11/Bill-Hale-Galapagos-Penguin-C.Sombrero-23.5.2009-e1423066207503.jpg")
