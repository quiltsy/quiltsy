class CreateFabricCollections < ActiveRecord::Migration
  def change
    create_table :fabric_collections do |t|
    	t.integer :manufacturer_id
    	t.string :name
      t.string :link
      t.string :designer
      t.text :material
      t.text :description

      t.timestamps
    end
  end
end
