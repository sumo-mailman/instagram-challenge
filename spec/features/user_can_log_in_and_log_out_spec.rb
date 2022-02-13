require 'rails_helper'

feature 'Login and Logout' do 
  scenario 'User logs into account' do 
    user = User.create(name: "Josh", email: "Josh@gmail.com", password: "Abc123")
    expect(User.all).to contain(user)
  end 
end 
