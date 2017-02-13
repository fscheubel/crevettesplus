class PagesController < ApplicationController
  def index
  end
  
  def menu
    @menu = Menu.default
    
    redirect_to @menu if @menu.present?
  end
end
