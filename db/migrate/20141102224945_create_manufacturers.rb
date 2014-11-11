class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
    	t.string :name
    	t.string :email
      t.string :website
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
