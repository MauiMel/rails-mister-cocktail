class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @doses = Dose.new
  end

  def show
    @doses = Dose.find(params[:id])
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:cocktail).permit(:name, :ingredient, :dose)
  end
end
