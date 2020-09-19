class IngredientsController < ApplicationController
    before_action :find_ingredients, only: [:show, :edit, :update, :destroy]
    def index
        @ingredients = Ingredient.all
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
    end

    def edit
    end

    def update
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def destroy
    end

    private

    def find_ingredients
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit!  #(:name, :user_id)
    end

end
