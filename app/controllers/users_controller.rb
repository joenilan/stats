class UsersController < ApplicationController
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
    respond_to do |format|
      format.html { render :layout => "application"}
    end
  end
end
