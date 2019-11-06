# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "Petticoat", price: "19.99", currency_code: "$", stock: "2", image_url: "www.google.com", description: "Wear underneath skirt to add body.", on_sale: false, discount: nil)
product.save
product = Product.new(name: "Blouse", price: "24.99", currency_code: "$", stock: "9", image_url: "www.google.com", description: "Long sleeve blouse with standing collar", on_sale: false, discount: nil)
product.save
product = Product.new(name: "Circle Skirt", price: "29.99", currency_code: "$", stock: "4", image_url: "www.google.com", description: "Calf length full circle skirt", on_sale: true, discount: 10)
product.save
p "Success!"
