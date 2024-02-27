# frozen_string_literal: true

# This controller is responsible for handling requests to the blog post page
class PostController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
end
