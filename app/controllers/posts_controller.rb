class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.reverse
  end

end
