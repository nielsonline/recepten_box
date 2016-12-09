class ReceptsController < ApplicationController
  before_action :find_recepts, only: [:show, :edit, :update, :destroy]

  def index
    @recepts = Recept.all.order("created_at DESC")
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

  def edit
  end

  def update
    if @recept.update(recept_params)
      redirect_to @recept
    else
      render 'edit'
    end
  end

  def destroy
    @recept.destroy
    redirect_to root_path, notice: "Succesfully deleted the recipe."
  end

  private

  def recept_params
    params.require(:recept).permit(:title, :description)
  end

  def find_recepts
    @recept = Recept.find(params[:id])
  end
end
