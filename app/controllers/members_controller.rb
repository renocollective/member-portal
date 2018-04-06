# frozen_string_literal: true

# Membership controller
class MembersController < ApplicationController
  before_action :set_member, only: %i[show edit update destroy]
  before_action :require_admin!, only: :destroy

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show() end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit() end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Profile created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member == current_member && @member.update(member_params)
        format.html { redirect_to @member, notice: 'Profile updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html do
        redirect_to members_url,
                    notice: 'Profile was successfully deleted.'
      end
      format.json { head :no_content }
    end
  end

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def require_admin!
    redirect_to members_url, notice: 'Unauthorized' unless current_member.admin?
  end

  def member_params
    params.fetch(:member, {}).permit(
      :activities, :avatar, :bio,
      :company, :email, :facebook,
      :firstname, :instagram, :interests,
      :lastname, :linkedin, :location,
      :password, :password_confirmation, :phone,
      :slack, :twitter, :username, :title,
      :website_name, :website_url, :work_pattern
    )
  end
end
