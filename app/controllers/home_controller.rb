class HomeController < ApplicationController

  def index
  end

  def live
  	@camcorders = Camcorder.all()
  end

  def view
  	@camcorder = Camcorder.find(params[:camcorder])
  end
end
