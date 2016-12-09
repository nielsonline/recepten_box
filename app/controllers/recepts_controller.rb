class ReceptsController < ApplicationController
  before_action :find_recepts, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @recept = Recept.new
  end

  def create
    @recept = Recept.new(recept_params)

    if @recept.save
      redirect_to @recept, notice: "Successfully created a new recept."
    else
      render 'new'
    end
  end

  private

  def recept_params
    params.require(:recept).permit(:title, :description)
  end

  def find_recept
    @recept = Recept.find(params[:id])
  end
end
