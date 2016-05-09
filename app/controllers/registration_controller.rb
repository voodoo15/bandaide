class RegistrationController < ApplicationController

  def new
    @user= User.new
    @musician = Musician.new
  end

  def create

    @user = User.new
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]

    @musician = Musician.new
    @musician.first_name = params[:musician][:first_name]
    @musician.last_name = params[:musician][:last_name]
    @musician.city = params[:musician][:city]
    @musician.province = params[:musician][:province]
    @musician.address = params[:musician][:address]
    @musician.postal_code = params[:musician][:postal_code]
    @user.valid?

    if @user.errors.blank?
      @user.save
      @musician.user = @user
      @musician.save
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
