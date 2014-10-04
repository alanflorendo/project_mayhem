class HyposController < ApplicationController

	def index
		@hypos = Hypo.all
	end

	def new
		@hypo = Hypo.new
	end

	def show
		@hypo = Hypo.find(params[:id])
	end

	def create
		@hypo = Hypo.new(hypo_params)
	end

	private

	def hypo_params
		params.require(:title, :law_name, :law_sponsor_date, :sponsor_name, :sponsor_city, :sponsor_state, :precip_amount, :is_tornado, :is_hurricane, :is_flood, :vote_count
, :user_id).permit()
	end

end
