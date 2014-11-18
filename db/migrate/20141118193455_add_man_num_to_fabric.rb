class AddManNumToFabric < ActiveRecord::Migration
  def change
  	add_column :fabrics, :item_num, :string
  end
end
