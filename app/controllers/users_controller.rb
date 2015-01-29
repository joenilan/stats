class UsersController < ApplicationController::Base
    attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end

  def new
  end

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
  end
end
