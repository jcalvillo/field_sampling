class LocationsController < ApplicationController

    def index
      #will have template
      @locations = Location.all
    end

    def show
      #will have template
    end

    def new #display a new record
      #will have template
    end

    def create #save the new record
      #will save and redirect
    end

    def edit #display from existing record
      #will have template
    end

    def update #save changes
    end

    def destroy
      #will destroy and redirect
    end

end

#url in browser -> router ->
#analyze URL -> send to matching action in matching controller
#controller will try to match with the view
