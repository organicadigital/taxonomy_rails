require 'ancestry'

class Taxon < ActiveRecord::Base

  belongs_to :taxonomy, inverse_of: :taxons, touch: true
  has_many :classifications, inverse_of: :taxonomy, dependent: :destroy

  validates :name, presence: true
  validates :taxonomy_id, presence: true

  has_ancestry touch: true

end
