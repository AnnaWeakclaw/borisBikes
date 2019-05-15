require "DockingStation"

describe DockingStation do
  let(:docking_station) {
    DockingStation.new
  }
  let(:bike) {
    Bike.new
  }
  describe "releases a bike" do
    it do
      expect(docking_station).to respond_to(:release_bike)
      #is_expected.to respond_to(:release_bike)
    end
  end

  describe "gets a bike" do
    it {
      docking_station.dock(bike)
      bike = docking_station.release_bike
      expect(bike.working?).to eq(true)
    }
  end

  describe "docks a bike" do
    it {
      expect(docking_station).to respond_to(:dock)
    }
  end

  describe "see a bike that has been docked" do
    it {
      expect(docking_station.dock(bike)).to be_an_instance_of(Bike)
    }
  end

  describe "cannot release a bike if there aren't any left" do
    it {
      expect { docking_station.release_bike }.to raise_error(RuntimeError)
    }
  end

  describe "cannot dock more than 20 bikes" do
    it {
      20.times { docking_station.dock(bike) }
      expect { docking_station.dock(bike) }.to raise_error(RuntimeError)
    }
  end
end
