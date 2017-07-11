class LocationsController < ApplicationController

    def index
      @locations = Location.all
      @date = Day.all
      @appointment = Appointment.all
    end

    def show
      @location = Location.find(params[:id])
    end

    def new
      @location = Location.new
    end

    def create #save the new record
      @location = Location.new(allowed_params)
      if @location.save
        redirect_to locations_path
        else
          render "new"
      end
    end

    def edit
      @location = Location.find(params[:id])
    end

    def update #save changes
      @location = Location.find(params[:id])
      if @location.update_attributes(allowed_params)
        redirect_to locations_path
        else
          render "new"
      end
    end

    def destroy
      @location = Location.find(params[:id])
      @location.destroy
      redirect_to locations_path
    end

    def import
      Location.import(params[:file])
      redirect_to locations_path, notice: "Locations Added Successfully"
    end

private
   def allowed_params
     params.require(:location).permit(:client, :city, :ranchfield, :grower, :siteblock, :variety, :acres, :latitude, :longitude, day_ids: [])
   end
end
