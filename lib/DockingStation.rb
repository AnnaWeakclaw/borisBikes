require_relative 'Bike'
class DockingStation
  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def release_bike
    return Bike.new
  end

  def dock 
   bike

  end
end
