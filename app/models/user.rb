class User < ApplicationRecord
    has_many :categories
    has_many :recipes, through: :categories
    has_many :ingredients, through: :recipes

    has_secure_password
end
