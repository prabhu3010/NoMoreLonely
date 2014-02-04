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
	def create_subroom
		@subroom =  Subroom.create(room_params[:subroom])
		if !@subroom.nil? && @subroom
			redirect_to subroom_path(:b_id => room_params[:subroom][:bigroom_id])
		else
			render action: 'new_subroom'
		end
	end
	def subrooms
			binding.pry
		@b_id = params[:b_id]
		@subrooms = Subroom.where(:bigroom_id => @b_id)
	end

	# Permit Params
	def room_params
		params.permit(:id, :name, :activity, :team_mates, :age, :location, :start_time, :end_time, :bigroom_id, :user_id)

	end
end
