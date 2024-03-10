# frozen_string_literal: true

# This controller is responsible for handling requests to the blog post page
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit]
  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new(headline: 'This is a dummy headline.', content: 'Blah blah blah')
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url(@post), notice: 'Post was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params
      .require(:post)
      .permit(:title, :headline, :content)
      .merge(author_id: 1, published: DateTime.now, created_at: DateTime.now)
  end
end
