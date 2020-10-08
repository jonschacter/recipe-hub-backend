class Recipe < ApplicationRecord
    belongs_to :category
    has_one :user, through: :category
    has_many :ingredients
    has_many :steps
end
