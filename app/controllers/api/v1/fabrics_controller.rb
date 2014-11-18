module Api
  module V1
		class Api::V1::FabricsController < ApplicationController
			respond_to :json

			protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

			# GET requests
      def get_fabric
        respond_with Fabric.create
      end

      def get_uncolored
        respond_with Fabric.where(color: nil)
      end


      # POST requests
	  def add_fabric

        # Fabricator info variables
        id = params[:id]
        link = params[:link]
        name = params[:name]
        item_num = params[:item_num]
        manufacturer = params[:manufacturer]
        collection = params[:collection]
        category = params[:category]
        designer = params[:designer]
        material = params[:material]
        keywords = params[:keywords]
        weight = params[:weight]
        width_in = params[:width_in]
        width_mm = params[:width_mm]
        description = params[:description]
        care = params[:care]

        # Fabricator image variables
        original = params[:original]
        mobile_1280 = params[:mobile_1280]
        mobile_960 = params[:mobile_960]
        mobile_720 = params[:mobile_720]
        mobile_480 = params[:mobile_480]
        mobile_320 = params[:mobile_320]
        mobile_160 = params[:mobile_160]
        ruler_in = params[:ruler_in]
        ruler_mm = params[:ruler_mm]

        # Find or create manufacturer
        fabric_manufacturer = Manufacturer.find_or_create_by(name: manufacturer)
        puts fabric_manufacturer.to_s, fabric_manufacturer.id

        # Find or create collection
        fabric_collection = FabricCollection.create_with(manufacturer_id: fabric_manufacturer.id).find_or_create_by(name: collection)
        puts fabric_collection.to_s, fabric_collection.id

        # Add the data to the fabric object
        fabric = Fabric.find(id)
        puts fabric, fabric.id

        fabric.fabric_collection_id = fabric_collection.id
        fabric.link = link
        fabric.name = name
        fabric.item_num = item_num
        fabric.manufacturer = manufacturer
        fabric.collection = collection
        fabric.category = category
        fabric.designer = designer
        fabric.keywords = keywords
        fabric.material = material
        fabric.weight = weight
        fabric.width_in = width_in
        fabric.width_mm = width_mm
        fabric.description = description
        fabric.care = care
        fabric.save

        # Create the fabric image object
        fabric_image = FabricImage.create
        puts fabric_image

        fabric_image.fabric_id = id
        fabric_image.original = original
        fabric_image.mobile_1280 = mobile_1280
        fabric_image.mobile_960 = mobile_960
        fabric_image.mobile_720 = mobile_720
        fabric_image.mobile_480 = mobile_480
        fabric_image.mobile_320 = mobile_320
        fabric_image.mobile_160 = mobile_160
        fabric_image.ruler_in = ruler_in
        fabric_image.ruler_mm = ruler_mm
        fabric_image.save

        render nothing: true
      end

      def add_color
      	
      end


		end
	end
end