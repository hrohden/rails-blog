# frozen_string_literal: true

# This is a cool class
class ApplicationController < ActionController::Base
  def index
    @blog_posts = BlogPost.all
  end
end
