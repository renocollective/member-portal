# frozen_string_literal: true

# comments for posts controller
class CommentsController < ApplicationController
  before_action :find_post

  def create
    @comment = @post.comments.create(comment_params)
    @comment.member_id = current_member.id
    @comment.save

    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to :new
    end  
  end

  private

  def comment_params
    params.fetch(:comment, {}).permit(
      :content
    )
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
