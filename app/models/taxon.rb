require 'ancestry'

class Taxon < ActiveRecord::Base

  belongs_to :taxonomy, inverse_of: :taxons, touch: true

  validates :name, presence: true
  validates :taxonomy_id, presence: true

  has_ancestry touch: true

end