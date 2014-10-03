class HyposController < ApplicationController

	def index
		@hypos = Hypo.all
	end

end
