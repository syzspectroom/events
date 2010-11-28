class MainController < ApplicationController
  def index
    
  end
  
  def new
    @event = Event.new
  end
  
end
