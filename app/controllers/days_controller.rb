class DaysController < ApplicationController

   def index
     #will have template
     @dates = Day.
     select(" days.id, days.date, coalesce(sum(appointments.pulls),0) appts_pulls_sum, count(day_id) appts_count").
     joins("LEFT JOIN appointments on appointments.day_id = days.id").
     group("days.id, days.date")
   end

   def show
     #will have template
     @date = Day.find(params[:id])
     @locations = Location.all
#     if @appointment.save
#       redirect_to day_path
#     else
#       render 'new'
#     end
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
       render 'new'
     end
   end

   def edit #display from existing record
     #will have template
     @date = Day.find(params[:id])
   end

   def update #save changes
     puts params
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
     params.require(:day).permit(:date, location_ids: [])
   end


 end
