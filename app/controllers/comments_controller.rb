# frozen_string_literal: true

# This controller is responsible for handling users' comments
class CommentsController < ApplicationController
  before_action :set_post

  def create
    if @post.comments.create! comment_params
      redirect_to post_url(@post), notice: 'Comment created'
    else
      render post_url(@post), :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(flash[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body).merge(post_id: flash[:post_id])
  end
end
