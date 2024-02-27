# frozen_string_literal: true

# This is a cool class
class ApplicationController < ActionController::Base
  def index
    @blog_posts = [
      '10 Tips for Learning Python',
      'Understanding JavaScript Closures',
      "A Beginner's Guide to HTML and CSS",
      'Exploring the New Features of React 17',
      'How to Build a RESTful API with Node.js',
      'Demystifying Machine Learning: A Comprehensive Guide',
      'Getting Started with Docker: A Step-by-Step Tutorial',
      'The Future of Web Development: Trends to Watch in 2022'
    ]
  end
end
