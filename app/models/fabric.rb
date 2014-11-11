class Fabric < ActiveRecord::Base
	include PgSearch

	# Fabric collections association
	belongs_to :fabric_collection

	# Fabric has one image object
	has_one :fabric_image, dependent: :destroy

	# Fabric search
	pg_search_scope :text_search,
                  against: [:name, :manufacturer, :collection, :category, :theme, :material],
                  ignoring: :accents,
                  using: {
                    tsearch: {
                      dictionary: 'english',
                      prefix: true
                    },
                    trigram: {
                      only: [:name, :manufacturer, :collection, :category, :theme, :material],
                      threshold: 0.1
                    },
                    # :dmetaphone
                  }
                  # :ranked_by 

end
