class FabricsController < ApplicationController

	def index
    @fabrics = Fabric.text_search(params[:query]).page(params[:page]).per_page(12)
		# @fabrics = Fabric.all
	end

	def show
		@fabric = Fabric.find(params[:id])
	end
end
