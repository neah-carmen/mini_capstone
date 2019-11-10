# spec/integration/pets_spec.rb
require "swagger_helper"

describe "Products API" do
  path "/api/products" do
    post "Creates a product" do
      tags "Products"
      consumes "application/json", "application/xml"
      parameter name: :product, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          price: { type: :integer },
          currency_code: { type: :string },
          stock: { type: :integer },
          image_url: { type: :string },
          description: { type: :string },
          on_sale: { type: :boolean },
          discount: { type: :integer },
        },
        required: ["name", "price", "currency_code", "stock", "description"],
      }

      response "201", "product created" do
        let(:product) { { name: "Dress", price: "available", currency_code: "$", stock: "1", description: "Little black dress" } }
        run_test!
      end

      response "422", "invalid request" do
        let(:product) { { name: "whoops, try again" } }
        run_test!
      end
    end
  end

  path "/api/products/{id}" do
    get "Retrieves a product" do
      tags "Products"
      produces "application/json", "application/xml"
      parameter name: :id, :in => :path, :type => :string

      response "200", "name found" do
        schema type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            photo_url: { type: :string },
            status: { type: :string },
          },
          required: ["id", "name", "status"]

        let(:id) { Pet.create(name: "foo", status: "bar", photo_url: "http://example.com/avatar.jpg").id }
        run_test!
      end

      response "404", "pet not found" do
        let(:id) { "invalid" }
        run_test!
      end
    end
  end
end
