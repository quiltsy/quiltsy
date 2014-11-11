class FabricCollection < ActiveRecord::Base

	# Manufacturers own the fabric collections
	belongs_to :manufacturer

	# Each collection has many different fabrics
	has_many :fabrics, dependent: :destroy
	
end
