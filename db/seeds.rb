# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(
  name: "Petticoat",
  price: "19.99",
  currency_code: "$",
  stock: "2",
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1573415393/actualize/v1gvg9xicsno8hmvkw9o.jpg",
  description: "Wear underneath skirt to add body.",
  on_sale: false,
  discount: nil,
)
product = Product.create(
  name: "Blouse",
  price: "24.99",
  currency_code: "$",
  stock: "9",
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1573415877/actualize/s9ytfrm1hu7a8iyroa28.jpg",
  description: "Long sleeve blouse with standing collar",
  on_sale: false,
  discount: nil,
)
product = Product.create(
  name: "Circle Skirt",
  price: "29.99",
  currency_code: "$",
  stock: "4",
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1573415394/actualize/j8soywum2jdee3rv2jbt.jpg",
  description: "Calf length full circle skirt",
  on_sale: true,
  discount: 10,
)
p "Success!"
