class IngredientSerializer < ActiveModel::Serializer
    attributes :id, :name, :quantity, :have
end