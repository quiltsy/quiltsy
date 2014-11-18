class AddRulerToFabricImage < ActiveRecord::Migration
  def change
  	add_column :fabric_images, :ruler_in, :decimal
  	add_column :fabric_images, :ruler_mm, :decimal
  end
end
