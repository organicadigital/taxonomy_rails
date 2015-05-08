class Classification < ActiveRecord::Base

  belongs_to :taxon, inverse_of: :classifications
  belongs_to :taxonomy, inverse_of: :classifications
  belongs_to :classifiable, polymorphic: true, inverse_of: :classification

  validates :taxon_id, :taxonomy_id, presence: true

  before_validation :copy_taxonomy_id

  protected

    def copy_taxonomy_id
      self.taxonomy_id = self.taxon.taxonomy_id if taxon.present?
    end

end
