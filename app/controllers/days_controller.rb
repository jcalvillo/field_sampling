class DaysController < ApplicationController

   def index
     #will have template
     @dates = Day.all
     @location = Location.all
     @appointment = Appointment.all
   end

   def show
     #will have template
     @date = Day.find(params[:id])
     @dates = Day.all
     @location = Location.all
     @appointment = Appointment.all
   end

   def new #display a new record
     #will have template
     @date = Day.new
   end

   def create #save the new record
     #will save and redirect
     @date = Day.new(allowed_params)

     if @date.save
       redirect_to days_path
     else
       render "new"
     end
   end

   def edit #display from existing record
     #will have template
     @date = Day.find(params[:id])
   end

   def update #save changes
     @date = Day.find(params[:id])
     if @date.update_attributes(allowed_params)
       redirect_to days_path
     else
       render "new"
     end
   end

   def destroy
     #will destroy and redirect
     @date = Day.find(params[:id])
     @date.destroy
     redirect_to days_path
   end

   def import
     Day.import(params[:file])
     redirect_to days_path, notice: "Dates Added Successfully"
   end


  private
   def allowed_params
     params.require(:day).permit(:date)
   end


 end
