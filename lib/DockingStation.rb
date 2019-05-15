require_relative "Bike"

class DockingStation
  attr_reader :bike

  def initialize
    @storage = []
  end

  def release_bike
    !@storage.empty? ? @bike : raise { RuntimeError.new("No bikes found!") }
  end

  def dock(bike)
    raise { RuntimeError.new("I am full of bikes!") } if @storage.length >= 20

    @storage.push(bike)
    @bike = bike
  end
end
