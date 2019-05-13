require "DockingStation"

describe DockingStation do 
  describe "releases a bike" do
  it do 
    # docking_station = DockingStation.new

    # expect(docking_station).to respond_to(:release_bike)
    is_expected.to respond_to(:release_bike)
  end
end
end 