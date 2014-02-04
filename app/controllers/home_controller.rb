class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@bigrooms = Bigroom.all
  end
  def subrooms_home
  	@b_id = params[:b_id]
  end
  def new_subroom
  	@b_id = params[:b_id]
  	@subroom = Subroom.new
  end
  def subrooms
  	@b_id = params[:b_id]
  end
end
