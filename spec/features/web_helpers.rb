def user_sign_up_and_log_in
  visit '/'
  click_link 'Sign up'

  fill_in "Name", with: "Josh"
  fill_in "Email", with: "Josh@gmail.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button 'Submit'
end 

# def user_log_in
#   visit '/'
#   fill_in "Email", with: "Josh@gmail.com"
#   fill_in "Password", with: 'password'
  
#   click_button "Log in"
# end 
