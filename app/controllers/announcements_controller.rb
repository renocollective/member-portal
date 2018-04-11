# frozen_string_literal: true

# Announcement controller
class AnnouncementsController < ApplicationController
  before_action :require_admin!
  before_action :find_announcement, only: %i[edit update destroy]

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      redirect_to @announcement, notice: 'The announcement was created!'
    else
      render :new
    end
  end

  def edit() end

  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to @announcement, notice: 'Update successful.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html do
        redirect_to posts_url,
                    notice: 'Announcement was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  def require_admin!
    redirect_to members_url, notice: 'Unauthorized' unless current_member.admin?
  end

  def announcement_params
    params.fetch(:announcement, {}).permit(
      :title, :content
    )
  end

  def find_announcement
    @announcement = Announcement.find(params[:id])
  end
end
