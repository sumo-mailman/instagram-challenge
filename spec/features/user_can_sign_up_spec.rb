require 'rails_helper'

feature 'Sign up' do 
  scenario 'Users can access the sign up page' do 
    visit '/'
    click_link 'Sign up' 

    expect(current_path).to eq(new_user_registration_path)
  end

  scenario 'User signs up' do 
    visit '/'
    click_link 'Sign up'

    fill_in "Name", with: "Josh"
    fill_in "Email", with: "Josh@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button 'Submit'

    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "Logged in as Josh"
  end

  context "with invalid details" do 

    before do 
      visit new_user_registration_path
    end 

    scenario "already registered email" do 
      visit '/'
      click_link 'Sign up'
  
      fill_in "Name", with: "Josh"
      fill_in "Email", with: "Josh@gmail.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
  
      click_button 'Submit'
      click_link 'Log out'
      

      visit '/'
      click_link 'Sign up'
  
      fill_in "Name", with: "Josh"
      fill_in "Email", with: "Josh@gmail.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"

      click_button 'Submit'

      expect(page).to have_content "Email has already been taken"


    end 

    scenario "blank fields" do 
      expect_fields_to_be_blank
      click_button 'Submit'
      expect(page).to have_content "Email can't be blank", "Password can't be blank"
    end 

    scenario "too short password" do
      min_password_length = 6
      too_short_password = "p" * (min_password_length - 1)
      fill_in "Name", with: "Josh"
      fill_in "Email", with: "Josh@gmail.com"
      fill_in "Password", with: too_short_password
      fill_in "Password confirmation", with: too_short_password
      
      click_button 'Submit'

      expect(page).to have_content "Password is too short"
    end 
  end 

end




private

def expect_fields_to_be_blank
  expect(page).to have_field("Email", with: "", type: "email")
  expect(find_field("Password", type: "password").value).to be_nil 
  expect(find_field("Password confirmation", type: "password").value).to be_nil 

end 