class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  
  
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success => "Welcome to Fashion App ! "}
    else
      @title = "Sign Up !"
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit User"
  end
  
  def update
    @user = User.find(params[:id])  
    if @user.update_attributes(params[:user])
      redirect_to @user, :flash => { :success => "Profile updated !"}
    else 
      @title = "Edit User"
      render 'edit'
    end
  end
  
  private
  
  def authenticate
    deny_access unless signed_in?
  end
  
  
  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page ! "
  end
end
