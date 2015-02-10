require 'ancestry'
require 'friendly_id'

class Taxon < ActiveRecord::Base

  extend FriendlyId

  belongs_to :taxonomy, inverse_of: :taxons, touch: true
  has_many :classifications, inverse_of: :taxonomy, dependent: :destroy

  validates :name, presence: true
  validates :taxonomy_id, presence: true
  validates :slug, uniqueness: { scope: :ancestry }

  has_ancestry touch: true

  friendly_id :name, use: :slugged

end
