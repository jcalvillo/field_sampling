class CalendarsController < ApplicationController

   def index
     #will have template
     @date = Calendar.all
   end

   def show
     #will have template
     @date = Calendar.find(params[:id])
   end

   def new #display a new record
     #will have template
     @date = Calendar.new
   end

   def create #save the new record
     #will save and redirect
     @date = Calendar.new(:date) #should be allowed_params instead of :date

     if @date.save
       redirect_to calendars_path
     else
       render "new"
     end
   end

   def edit #display from existing record
     #will have template
     @date = Calendar.find(params[:id])
   end

   def update #save changes
     @date = Calendar.find(params[:id])
     if @date.update_attributes(:date) #should be allowed_params instead of :date (":date" is a symbol)
       redirect_to calendars_path
     else
       render "new"
     end
   end

   def destroy
     #will destroy and redirect
     @date = Calendar.find(params[:id])
     @date.destroy
     redirect_to date_path
   end

   def import
     Calendar.import(params[:file])
     redirect_to calendars_path, notice: "Dates Added Successfully"
   end

# UPDATE, CREATE should rever to (allowed params) b/c they need to be passed a HASH
#   private
#    def allowed_params
#      params.require(:date).permit(:date)
#    end


 end
