require 'rails_helper'

RSpec.feature "visitor navigates to a specific product", type: :feature, js: true do
  
  
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see products details" do
    @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
    
    # ACT
    visit root_path
    click_on("Details", match: :first)

    # DEBUG / VERIFY
    # puts page.html
    
    # expect(page).to have_current_path('/233')
    expect(page).to have_css '.product-detail', count: 1 
    save_screenshot
  end

end
