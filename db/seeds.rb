# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: "Pannier",
  price: "149.99",
  currency_code: "$",
  stock: "3",
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1573851107/actualize/exeasjpifjjfjw6mbld0.png",
  description: "Elasiticized waistband, full, gathered body. 100% Polyester.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Product.create(
  name: "Petit Frill Blouse",
  price: "149.99",
  currency_code: "$",
  stock: 4,
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1573849944/actualize/yluscm3tgbrbkxvop3pu.png",
  description: "Long sleeve blouse with frilled bib. 100% Cotton Broadcloth",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Product.create(
  name: "La Floraison Feerique Lace Dress",
  price: "349.99",
  currency_code: "$",
  stock: 2,
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1573850570/actualize/y09nwsjwyjlmmm95vmi0.png",
  description: "Half sleeve dress, rayon/polyester blend body with ribbon and lace accents.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Product.create(
  name: "Pearl Diamonds Knitting Bolero",
  price: "199.99",
  currency_code: "$",
  stock: 4,
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1573850926/actualize/kj8anutabhzgfkq8cwmf.png",
  description: "Wool/acrylic knitted half sleeve bolero.",
  on_sale: true,
  discount: 5,
  supplier_id: 2,
)
Product.create(
  name: "Maria Rosa Mistica Dress",
  price: "449.99",
  currency_code: "$",
  stock: 2,
  image_url: "https://res.cloudinary.com/puereveryday/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1573851106/actualize/c2jm5nteef29ti3msipm.png",
  description: "Long sleeved dress, linen body with ribbon accents and lace trim.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Supplier.create(
  name: "Moi Meme Moitie",
  email: "info@moi-meme-moitie.com",
  phone_number: "+81.927137999",
)
Supplier.create(
  name: "Baby, The Stars Shine Bright",
  email: "info@baby-aatp.com",
  phone_number: "+1.7147064182",
)

p "Success!"
