class ChangeFabricCollectionMaterial < ActiveRecord::Migration
  def change
  	change_column :fabric_collections, :material, :string
  end
end
