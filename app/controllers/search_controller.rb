







class SearchController < ApplicationController
  
  def index
    @posts = Micropost.find(:all, :conditions => ['category LIKE ?', "%#{params[:id]}%"])
    render
  end
  
  
  
end
