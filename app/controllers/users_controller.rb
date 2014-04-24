class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
 # private
  #  def app_params
   #   params.require(:list).permit(:name, :email)
  #  end
end
