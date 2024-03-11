# frozen_string_literal: true

# This controller is responsible for handling users' comments
class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)

    if @comment.save
      redirect_to post_url(@comment.post), notice: 'Comment created'
    else
      render post_url(@comment.post), :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(post_id: 1)
  end
end
