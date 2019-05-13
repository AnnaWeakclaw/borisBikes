require "DockingStation"

describe DockingStation do 
  describe "releases a bike" do
  it do 
    # docking_station = DockingStation.new
    # expect(docking_station).to respond_to(:release_bike)
    is_expected.to respond_to(:release_bike)
  end
end

  describe "gets a bike" do
    it { 

      docking_station = DockingStation.new
      bike = docking_station.release_bike

      expect(bike.working?).to eq(true)
           }
  end
end 