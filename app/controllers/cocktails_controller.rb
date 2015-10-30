class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
 def index
   @cocktails = Cocktail.all
 end

 def show
 end


 def new
   @cocktail = Cocktail.new
 end


 def edit
 end


 def create
   @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end

 end

 # PATCH/PUT /cocktails/1
 # PATCH/PUT /cocktails/1.json
 def update

 end

 # DELETE /cocktails/1
 # DELETE /cocktails/1.json
 def destroy

 end



 private
   # Use callbacks to share common setup or constraints between actions.
   def set_cocktail
     @cocktail = Cocktail.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def valid_attributes
     #params.require(:cocktail).permit( :name, :address, :phone_number, :category)
   end
end


