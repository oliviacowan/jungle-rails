require 'rails_helper'

# RSpec.describe Product, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

# RSpec.describe Product, type: :model do
#   describe 'Validations' do
#     # validation tests/examples here
#   end
# end

RSpec.describe Product, type: :model do
  describe 'Validations' do
    describe "product is created" do
      it "saves" do

        cat1 = Category.find_or_create_by! name: 'Apparel'
         @product =  cat1.products.new({
            name:  'Classy shirt',
            quantity: 10,
            price: 64.99
          })
        expect(@product.save).to be true
        
      end
    end
    describe "validates name" do
      it "presence is true" do

        cat1 = Category.find_or_create_by! name: 'Apparel'
         @product =  cat1.products.new({
            name: 'classy shirt',
            quantity: 10,
            price: 64.99
          })
          expect(@product.name).to be_present
      end
    end
    describe "validates price" do
      it "presence is true" do

        cat1 = Category.find_or_create_by! name: 'Apparel'
         @product =  cat1.products.new({
            name: 'classy shirt',
            quantity: 10,
            price: 64.99
          })
          expect(@product.price).to be_present
      end
    end
    describe "validates quantity" do
      it "presence is true" do

        cat1 = Category.find_or_create_by! name: 'Apparel'
         @product =  cat1.products.new({
            name: 'classy shirt',
            quantity: 10,
            price: 64.99
          })
          expect(@product.quantity).to be_present
      end
    end
    describe "validates category" do
      it "presence is true" do

        cat1 = Category.find_or_create_by! name: 'Apparel'
         @product =  cat1.products.new({
            name: 'classy shirt',
            quantity: 10,
            price: 64.99
          })
          expect(@product.category).to be_present
      end
    end
  end
end