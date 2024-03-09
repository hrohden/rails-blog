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
end
