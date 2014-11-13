class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
    	t.integer :fabric_collection_id
    	t.string :name
      t.string :manufacturer
      t.string :collection
      t.string :category
      t.string :designer
      t.string :material
      t.string :weight
      t.string :tags
      t.string :link
      t.text :description
      t.text :care
      t.decimal :width_in
      t.decimal :width_mm

      t.timestamps
    end
  end
end
