require 'rails_helper'

RSpec.feature "timeline", type: :feature do
  scenario "User can add posts" do 
    post = Post.create(message: "Hello, world!")
    visit "posts/index"
    expect(post).to have_content("Hello, world!")
  end 
end 