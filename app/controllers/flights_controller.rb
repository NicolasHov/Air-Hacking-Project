class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airports = Airport.all
  end

def new
  @flights = Flight.all
  @airports = Airport.all
  @flight = Flight.new
end

def create
  # TODO erreur 'airport must exist'
  @airports = Airport.all

  @flights = Flight.all
  @flight = Flight.new(params[:flight])
  if @flight.save!
    redirect_to @flight
  else
    render 'new'
  end
end
#pour montrer un vol en particulier .... faire la vue ...
  def show
     @flight = Flight.find(params[:id])
  end
end
