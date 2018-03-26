# frozen_string_literal: true

# comments for posts controller
class CommentsController < ApplicationController
  before_action :find_post
  before_action :find_comment, only: %i[edit update destroy comment_owner]
  before_action :comment_owner, only: %i[edit update destroy]

  def create
    @comment = @post.comments.create(comment_params)
    @comment.member_id = current_member.id
    @comment.save
    redirect_to post_path(@post)
  end

  def edit() end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@post)
    else
      redirect_to :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
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

  def find_comment
    @comment = @post.comments.find(params[:id])
  end

  def comment_owner
    flash[:notice] = 'Only owner of the comment can delete or update' unless
      current_member.id == @comment.member_id
    redirect_to post_path(@post) unless current_member.id == @comment.member_id
  end
end
