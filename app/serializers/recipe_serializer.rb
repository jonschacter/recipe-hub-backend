class RecipeSerializer < ActiveModel::Serializer
    belongs_to :category
    
    attributes :id, :name, :rating, :category
end