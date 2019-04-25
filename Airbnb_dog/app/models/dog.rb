class Dog < ApplicationRecord
  belongs_to :city
	has_many :dogstrolls
	has_many :strolls, through: :dogstrolls
	has_many :dogsitters, through: :strolls
end
