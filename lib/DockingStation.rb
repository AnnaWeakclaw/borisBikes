require_relative 'Bike'
class DockingStation
  attr_reader :bike

  def initialize
    @bike = bike
  end

  def release_bike
     Bike.new
  end

  def dock(bike)
   bike
  end
end
