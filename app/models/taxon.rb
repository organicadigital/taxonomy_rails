class Taxon < ActiveRecord::Base

  belongs_to :taxonomy, inverse_of: :taxons

  validates :name, presence: true
  validates :taxonomy_id, presence: true

end
