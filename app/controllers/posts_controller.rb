# frozen_string_literal: true

# Post controller
class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  def index
    @posts = Post.all.order('created_at DESC')
    @comments = Comment.where(post_id: @post).order('created_at DESC')
  end

  def show
    @comments = Comment.where(post_id: @post).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member = current_member
    if @post.save
      redirect_to @post, notice: 'The post was created!'
    else
      render :new
    end
  end

  def edit() end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Update successful.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html do
        redirect_to posts_url,
                    notice: 'Post was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  def post_params
    params.fetch(:post, {}).permit(
      :title, :content
    )
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
