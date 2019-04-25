class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_many :dogstrolls
  has_many :dogs, through: :dogstrolls
end
