require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bikes" do
  bike = subject.release_bike
  expect(bike).to be_working
end


 #
 #  it "expects the bike to be working" do
 #
 #   :working?
 # end
end


# { is_expected(my_object).to be_a_kind_of Bike }

# "release_bike returns a new instance of the Bike class."
