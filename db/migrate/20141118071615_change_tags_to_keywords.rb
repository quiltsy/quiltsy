class ChangeTagsToKeywords < ActiveRecord::Migration
  def change
  	rename_column :fabrics, :tags, :keywords
  end
end
