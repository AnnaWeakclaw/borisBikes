require "DockingStation"

describe DockingStation do 
  describe "releases a bike" do
  it do 
    bike = Bike.new
    docking_station = DockingStation.new(bike)
    expect(docking_station).to respond_to(:release_bike)
    #is_expected.to respond_to(:release_bike)
  end
end

  describe "gets a bike" do
    it { 
      bike = Bike.new
      docking_station = DockingStation.new(bike)
      bike = docking_station.release_bike

      expect(bike.working?).to eq(true)
           }
  end

  describe "docks a bike" do
    it {
      bike = Bike.new
      docking_station = DockingStation.new(bike)

      expect(docking_station).to respond_to(:dock)
    }
  end

  describe "see a bike that has been docked" do
    it {
      bike = Bike.new
      docking_station = DockingStation.new(bike)

      expect(docking_station.dock).to eq(bike)
    }
  end
end 