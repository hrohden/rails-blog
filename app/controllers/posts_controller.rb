# frozen_string_literal: true

# This controller is responsible for handling requests to the blog post page
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new; end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :headline, :content)
  end
end
