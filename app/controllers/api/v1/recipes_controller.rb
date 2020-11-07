class Api::V1::RecipesController < ApplicationController
    def index
        if logged_in?
            categories = current_user.categories
            render json: categories, each_serializer: CategorySerializer
        else
            render :json => {
                error: "You need to log in to view this"
            }
        end
    end

    def show
        if logged_in?
            recipe = current_user.recipes.find_by(id: params[:id])
            if recipe
                render json: recipe
            else
                render :json => {
                    error: "Recipe could not be found"
                }
            end
        else
            render :json => {
                error: "You need to log in to view this"
            }
        end
    end
end