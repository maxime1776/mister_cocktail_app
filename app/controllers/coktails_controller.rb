class CoktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

 def index
   @cocktails = cocktail.all
 end

 def show
 end


 def new
   @cocktail = cocktail.new
 end


 def edit
 end


 def create
   @cocktail = cocktail.new(valid_attributes)
   if @cocktail.save
     redirect_to cocktail_path(@cocktail)
   else
     render :new
   end
 end

 # PATCH/PUT /cocktails/1
 # PATCH/PUT /cocktails/1.json
 def update
   respond_to do |format|
     if @cocktail.update(cocktail_params)
       format.html { redirect_to @cocktail, notice: 'cocktail was successfully updated.' }
       format.json { render :show, status: :ok, location: @cocktail }
     else
       format.html { render :edit }
       format.json { render json: @cocktail.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE /cocktails/1
 # DELETE /cocktails/1.json
 def destroy
   @cocktail.destroy
   respond_to do |format|
     format.html { redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.' }
     format.json { head :no_content }
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_cocktail
     @cocktail = cocktail.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def valid_attributes
     params.require(:cocktail).permit( :name, :address, :phone_number, :category)
   end
end

end
