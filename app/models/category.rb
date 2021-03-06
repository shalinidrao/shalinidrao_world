class Category < ApplicationRecord
	has_many :photos
	has_many :article

	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
