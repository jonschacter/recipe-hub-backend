class User < ApplicationRecord
    has_many :categories
    has_many :recipes
    has_many :ingredients, through: :recipes

    has_secure_password
end
