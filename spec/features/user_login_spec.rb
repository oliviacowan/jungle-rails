require 'rails_helper'

RSpec.feature "visitor can login ", type: :feature, js: true do
  
  
  before :each do
 
  @user = User.create!({
    first_name: 'geo', 
    last_name: 'teo',
    email: 'testing@gmail.com', 
    password: '123456', 
    password_confirmation: '123456'})

  end

  scenario "They will see a logout option in the top right coner of the page" do

    # ACT
    visit root_path
    click_on("Login")

    
    fill_in 'email', with: 'testing@gmail.com'
    fill_in 'password', with: '123456'
    click_on('Submit')

    expect(page).to have_text 'Logout' 

    # DEBUG / VERIFY
    save_screenshot

  end
end
