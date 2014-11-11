class FabricCollectionsController < ApplicationController

	def show
		@manufacturer = Manufacturer.find(params[:id])
		@fabric_collection = @manufacturer.fabric_collections.find(params[:id])
	end

end
