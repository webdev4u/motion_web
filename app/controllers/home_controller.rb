class HomeController < ApplicationController
	skip_authorize_resource
	
  def index
  end

  def live
  	@camcorders = Camcorder.all()
  end

  def view
  	@camcorder = Camcorder.find(params[:camcorder])
  end
end
