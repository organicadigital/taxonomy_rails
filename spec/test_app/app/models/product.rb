class Product < ActiveRecord::Base

  has_many :classifications, as: :classifiable, inverse_of: :classifiable,
      dependent: :destroy
  has_many :taxons, through: :classifications

  validates :name, presence: true

end
