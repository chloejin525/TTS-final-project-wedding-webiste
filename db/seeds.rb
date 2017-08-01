# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: 'Harriet@fake.com', password: '123456', first_name: "Harriet", last_name: "Tamsyn")
u2 = User.create(email: 'Blanch@fake.com', password: '123456', first_name: "Blanch", last_name: "Oscar")
u3 = User.create(email: 'Roxanne@fake.com', password: '123456', first_name: "Roxanne", last_name: "Alison")
u4 = User.create(email: 'Katelynn@fake.com', password: '123456', first_name: "Katelynn", last_name: "Frieda")
u5 = User.create(email: 'Maurice@fake.com', password: '123456', first_name: "Maurice", last_name: "Curtis")
u6 = User.create(email: 'Teddy@fake.com', password: '123456', first_name: "Teddy", last_name: "Arn")

r1 = Response.create(attendance: "Yes", number: 2, message: " ", user_id: u1.id)
r2 = Response.create(attendance: "No", user_id: u2.id)
r3 = Response.create(attendance: "No", user_id: u3.id)
r4 = Response.create(attendance: "Yes", number: 1, message: " ", user_id: u4.id)
r5 = Response.create(attendance: "Yes", number: 3, message: " ", user_id: u5.id)
r6 = Response.create(attendance: "Yes", number: 3, message: " ", user_id: u6.id)