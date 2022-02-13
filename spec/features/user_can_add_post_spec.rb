require 'rails_helper'

RSpec.feature "timeline", type: :feature do
  scenario "User can add posts" do 
    user_sign_up_and_log_in

    click_link "New post"

    page.attach_file("post_image", Rails.root + 'app/assets/images/Img_1.jpeg') 
    find(:xpath, "//*[@id='post_message']").set "this is a caption"

    click_button "Submit" 

    expect(page).to have_content("Post was successfully created")

    visit '/'
    
    expect(page).to have_content "this is a caption"

  end 
end 