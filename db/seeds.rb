# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
Supplier.create(
  name: "Gloomth",
  email: "taeden@gloomth.com",
  phone_number: "+1.6473479469",
)
Product.create(
  name: "Pannier",
  price: 149.99,
  currency_code: "$",
  stock: 3,
  description: "Elasiticized waistband, full, gathered body. 100% Polyester.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1573851107/actualize/exeasjpifjjfjw6mbld0.png",
  product_id: 1,
)
Product.create(
  name: "Petit Frill Blouse",
  price: 149.99,
  currency_code: "$",
  stock: 4,
  description: "Long sleeve blouse with frilled bib. 100% Cotton Broadcloth",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1573849944/actualize/yluscm3tgbrbkxvop3pu.png",
  product_id: 2,
)
Product.create(
  name: "La Floraison Feerique Lace Dress",
  price: 349.99,
  currency_code: "$",
  stock: 2,
  description: "Half sleeve dress, rayon/polyester blend body with ribbon and lace accents.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1573850570/actualize/y09nwsjwyjlmmm95vmi0.png",
  product_id: 3,
)
Product.create(
  name: "Pearl Diamonds Knitting Bolero",
  price: 199.99,
  currency_code: "$",
  stock: 4,
  description: "Wool/acrylic knitted half sleeve bolero.",
  on_sale: true,
  discount: 5,
  supplier_id: 2,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1573850926/actualize/kj8anutabhzgfkq8cwmf.png",
  product_id: 4,
)
Product.create(
  name: "Maria Rosa Mistica Dress",
  price: 449.99,
  currency_code: "$",
  stock: 2,
  description: "Long sleeved dress, linen body with ribbon accents and lace trim.",
  on_sale: false,
  discount: nil,
  supplier_id: 2,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1573851106/actualize/c2jm5nteef29ti3msipm.png",
  product_id: 5,
)
Product.create(
  name: "Victoria",
  price: 159.99,
  currency_code: "$",
  stock: 2,
  description: "Black cotton poplin dress with long sleeves with button cuffs trimmed in black velvet. Puffed at the shoulder seam for a proper Victorian feel.",
  on_sale: false,
  discount: nil,
  supplier_id: 3,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574007994/actualize/wjulf7ydyf7vmash5hjm.jpg",
  product_id: 6,
)
Product.create(
  name: "Dracula's Bride",
  price: 174.99,
  currency_code: "$",
  stock: 4,
  description: "Soft crimson red velvet dress with short puffed sleeves with elastic cuffs. High collar with ruffle trim.",
  on_sale: true,
  discount: 10,
  supplier_id: 3,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574007720/actualize/urewk9lbviwa4vuhhhsj.jpg",
  product_id: 7,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574011247/actualize/h9gk20klfjowtchgfkat.jpg",
  product_id: 7,
)
Product.create(
  name: "Gardenia dress",
  price: 324.99,
  currency_code: "$",
  stock: 2,
  description: "A simple and elegant dress with a rose lace and cape collar.",
  on_sale: false,
  discount: nil,
  supplier_id: 1,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574043260/actualize/ckw2xr5t9hfmk54gvhj3.jpg",
  product_id: 8,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/v1574043259/actualize/ik7c7fc7pzyjtolceuro.jpg",
  product_id: 8,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574043261/actualize/jqmwg737gg92h2dzkrrl.jpg",
  product_id: 8,
)
Product.create(
  name: "Petticoat",
  price: 149.99,
  currency_code: "$",
  stock: 4,
  description: "A petticoat with a volume of 2 steps chiffon frills.",
  on_sale: true,
  discount: 10,
  supplier_id: 1,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574043507/actualize/wkytljqa2dhkfphyoxvi.jpg",
  product_id: 9,
)
Product.create(
  name: "Summer leopard dress",
  price: 189.99,
  currency_code: "$",
  stock: 5,
  description: "Cotton dress with puffed sleeve cap and comfortable but stretchy cotton for the summer time.",
  on_sale: false,
  discount: nil,
  supplier_id: 1,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574043604/actualize/ahr9uxxcvocplvtb3aj9.jpg",
  product_id: 10,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/c_thumb,w_200,g_face/v1574043604/actualize/obca4mdd5oiet9laqiog.jpg",
  product_id: 10,
)
Image.create(
  url: "https://res.cloudinary.com/puereveryday/image/upload/v1574043604/actualize/yezxxstlb1ixoxdovybt.jpg",
  product_id: 10,
)

p "Success!"
