class Taxonomy < ActiveRecord::Base

  has_many :taxons, inverse_of: :taxonomy, dependent: :destroy

  validates :name, presence: true

end
