class FabricsController < ApplicationController

	def index
    @fabrics = Fabric.text_search(params[:query]).page(params[:page]).per_page(36)
		# @fabrics = Fabric.all
	end

	def show
		@fabric = Fabric.find(params[:id])
	end
end
