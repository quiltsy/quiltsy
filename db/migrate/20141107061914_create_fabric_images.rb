class CreateFabricImages < ActiveRecord::Migration
  def change
    create_table :fabric_images do |t|
    	t.integer :fabric_id
    	t.string :original
    	t.string :mobile_1280
      t.string :mobile_960
      t.string :mobile_720
      t.string :mobile_480
      t.string :mobile_320
      t.string :mobile_160

      t.timestamps
    end
  end
end
