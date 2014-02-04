class HomeController < ApplicationController
	before_filter :authenticate_user!

	def index # list of Big rooms
		@bigrooms = Bigroom.all
	end

	def subrooms_home #subroom home page
		@b_id = params[:b_id]
	end
	def new_subroom # setup subroom
		@b_id = params[:b_id]
		@subroom = Subroom.new
	end
	def create_subroom # setup subroom (post)
		@subroom =  Subroom.create(room_params)
		if !@subroom.nil? && @subroom
			redirect_to subroom_path(:b_id => room_params[:bigroom_id])
		else
			render action: 'new_subroom'
		end
	end
	def subrooms # list of Sub rooms
		@b_id = params[:b_id]
		@subrooms = Subroom.where(:bigroom_id => @b_id)
	end

	# Permit Params
	def room_params
		params.require(:subroom).permit(:id,:name,:activity,:team_mates,:start_time,:age,:end_time,:location,:bigroom_id,:user_id)
	end
end
