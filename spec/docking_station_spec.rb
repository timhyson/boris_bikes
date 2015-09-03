require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bikes" do
  bike = subject.release_bike
  expect(bike).to be_working
  end
  it { is_expected.to respond_to :dock }
  it 'should accept Bike.new as a argument' do 
  	expect{ subject.dock(Bike.new) }.to_not raise_error
  end
end