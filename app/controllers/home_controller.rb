class HomeController < ApplicationController
  def index
    render :home
  end

  def about
  	render :about
  end
end
