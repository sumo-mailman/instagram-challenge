require 'rails_helper'

RSpec.describe "PostsControllers", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "DELETE /" do
    it "redirects to the posts url" do
      post = Post.create(message: "Hello, World!")
      delete :destroy, params: { id: post.id }
      expect(response).to redirect_to(posts_url)
    end

    it "deletes a post" do
      post = Post.create(message: "Hello, World!")
      delete :destroy, params: { id: post.id }

      expect(Post.exists?(post.id)).to be false
    end
end



## spec/requests/user_spec.rb
require 'rails_helper'

RSpec.describe "PostsControllers", type: :request do

  describe "it attaches uploaded files" do
    it 'attaches the uploaded file' do
      file = fixture_file_upload(Rails.root.join('public', 'avatar.jpg'), 'image/jpg')
      expect {
        post api_users_path, params: { user: {username: "Ben", avatar: file } }
      }.to change(ActiveStorage::Attachment, :count).by(1)
    end
  end
end