class WelcomeController < ApplicationController
  def hello
    
    @destinations = Destination.all
    
    
  end
end
