class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def my_posts
    @posts = current_user.posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
  end

  private

  def posts_params
    params.require(:posts).permit(:title, :description)
  end
end
