class ReceptenController < ApplicationController

  def index
  end

  def show
  end

  def new
    @recept = Recept.new
  end

  def create
    @recept = Recept.new(recipe_params)
  end

  private
  def recept_params
    params.require(:recipe).permit(:title, :description)
  end

  def find_recept
    @recept = Recept.find(params[:id])
  end
end
