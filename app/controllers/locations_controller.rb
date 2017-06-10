class LocationsController < ApplicationController

    def index
      #will have template
      @locations = Location.all
    end

    def show
      #will have template
      @location = Location.find(params[:id])
    end

    def new #display a new record
      #will have template
      @location = Location.new
    end

    def create #save the new record
      #will save and redirect
      @location = Location.new(:location) #should be allowed_params instead of :location

      if @date.save
        redirect_to locations_path
      else
        render "new"
    end
  end


    def edit #display from existing record
      #will have template
      @location = Location.find(params[:id])
    end

    def update #save changes
      @location = Location.find(params[:id])
      if @location.update_attributes(:location) #should be allowed_params instead of :date
        redirect_to locations_path
      else
        render "new"
    end
  end

    def destroy
      #will destroy and redirect
      @location = Location.find(params[:id])
      @location.destory
      redirect_to locations_path
    end

    def import
      Location.import(params[:file])
      redirect_to locations_path, notice: "Locations Added Successfully"
    end

# UPDATE, CREATE should rever to (allowed params) b/c they need to be passed a HASH
#   private
#    def allowed_params
#      params.require(:client).permit(:cit :ranchfield :grower :siteblock :variety :acres :latitude :longitude)
#    end
end



#url in browser -> router ->
#analyze URL -> send to matching action in matching controller
#controller will try to match with the view
