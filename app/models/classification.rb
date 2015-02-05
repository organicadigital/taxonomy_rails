class Classification < ActiveRecord::Base

  belongs_to :taxon, inverse_of: :classifications
  belongs_to :classifiable, polymorphic: true, inverse_of: :classification

  validates :taxon_id, presence: true
  validates :classifiable_id, presence: true
  validates :classifiable_type, presence: true

end
