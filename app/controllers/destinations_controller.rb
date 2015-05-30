class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    
    
  end
  
  def new
    @destination = Destination.new 
  end
  

    def create
      Destination.create!(destination_params)
      redirect_to destinations_path
    end
    
    def destination_params
      params.require(:destination).permit(:name, :transport_type, :description, :start_at,   :end_at, :photo_url)
    end
    def destroy
    Destination.find(params[:id]).destroy
      redirect_to destinations_path

  end
end
