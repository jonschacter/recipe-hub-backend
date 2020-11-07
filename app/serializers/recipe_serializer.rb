class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :name, :rating

    has_one :category, serializer: CategorySerializer

    has_many :ingredients, serializer: IngredientSerializer
end
