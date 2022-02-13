require 'rails_helper'

feature 'User logs in and logs out' do 

  scenario 'with correct details' do 
    user = User.create(name: "Josh", email: "Josh@gmail.com", password: "abc123")
    expect(User.all.last).to eq(user)

    visit '/'

    fill_in "Email", with: "Josh@gmail.com"
    fill_in "Password", with: 'abc123'
    
    click_button "Log in"

    expect(page).to have_content "Logged in as Josh"

    click_link "Log out"

    expect(page).to have_content "Log in"

  end 

end 
