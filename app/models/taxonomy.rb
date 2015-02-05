class Taxonomy < ActiveRecord::Base

  validates :name, presence: true

end
