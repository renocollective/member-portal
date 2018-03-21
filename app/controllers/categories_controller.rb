# frozen_string_literal: true

# Categories controller
class CategoriesController < ApplicationController
  before_action :find_category, only: %i[destroy]

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to posts_url, notice: 'Category created.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @category = Category.new
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html do
        redirect_to posts_url,
                    notice: 'Category was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  def category_params
    params.fetch(:category, {}).permit(
      :name
    )
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
