# frozen_string_literal: true

# This controller is responsible for handling requests to the blog post page
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit destroy update]
  def index
    @posts = Post.all
  end

  def show
    @new_comment = Comment.new
    flash[:post_id] = @post.id
  end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_url(@post), notice: 'Post was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_url(@post), notice: 'Post was successfully changed'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_url, notice: 'Post is deleted.'
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
