class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
     @mechanic = Mechanic.find(params[:id])
  end

  def edit
     @mechanic = Mechanic.find(params[:id])
  end

  def update
    @mechanic = Mechanic.find(params[:id])
    @mechanic.update(update_params)
    @mechanic.save
    redirect_to "/mechanics"
  end

  private

  def update_params
    params.permit(:name, :years_experience)
  end
end
