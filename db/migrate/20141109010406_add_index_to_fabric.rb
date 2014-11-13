class AddIndexToFabric < ActiveRecord::Migration
  def change
  	execute "create index fabrics_name on fabrics using gin (name gin_trgm_ops)"
  	execute "create index fabrics_manufacturer on fabrics using gin (manufacturer gin_trgm_ops)"
  	execute "create index fabrics_collection on fabrics using gin (collection gin_trgm_ops)"
  	execute "create index fabrics_category on fabrics using gin (category gin_trgm_ops)"
  	execute "create index fabrics_designer on fabrics using gin (designer gin_trgm_ops)"
  	execute "create index fabrics_material on fabrics using gin (material gin_trgm_ops)"
  	execute "create index fabrics_tags on fabrics using gin (tags gin_trgm_ops)"
  end
end
