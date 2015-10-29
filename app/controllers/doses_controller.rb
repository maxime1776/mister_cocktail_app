class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]


  def new
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

   def create
     @dose = @cocktail.doses.build(doses_params)
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
  end

   private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

   def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end









