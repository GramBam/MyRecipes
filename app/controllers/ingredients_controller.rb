class IngredientsController < ApplicationController
  before_action :require_user, except: [:show]


  def show
    @ingredient = Ingredient.find(params[:id])
    @recipes = @ingredient.recipes.paginate(page: params[:page], per_page: 4)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(style_params)
    if @ingredient.save
      flash[:success] = "Ingredient Successfully Created"
      redirect_to recipes_path
    else
      render 'new'
    end

  end

  private

  def style_params
    params.require(:ingredient).permit(:name)
  end
end
