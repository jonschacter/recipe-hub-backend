class Api::V1::RecipesController < ApplicationController
    def index
        if logged_in?
            recipes = current_user.recipes
            render json: recipes, each_serializer: RecipeSerializer
        else
            render :json => {
                error: "You need to log in to view this"
            }
        end
    end
end