# USER STORIES

# As a member of the public
# So that I can get across town
# I'd like to get a working bike from a docking station.

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.

# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.


# TESTS

require "docking_station"

describe DockingStation do
  it "has a default capacity" do
    expect(subject.capacity).to eq subject.class::DEFAULT_CAPACITY
  end
  # it { is_expected.to respond_to :capacity }

  it { is_expected.to respond_to :release_bike }

  it "releases working bikes" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  
  describe '#release_bike' do
    it 'raises an error when there are no bikes' do
      expect {subject.release_bike}.to raise_error('No bikes available')
    end
  end

  describe '#dock' do
  it 'raises an error when 21st bike is docked at DockingStation' do
    20.times {subject.dock(Bike.new)}
    expect { subject.dock Bike.new }.to raise_error('Docking station full')
  end
  end
end
