require "rspec"
require "parcels"

describe "Parcel" do
  it "is initialized with 3 dimensions and weight" do
    test_parcel = Parcel.new(5,6,7,40)
    test_parcel.should be_an_instance_of Parcel
  end

  it "calculates the volume of the parcel" do
    test_parcel = Parcel.new(5,6,7,40)
    test_parcel.volume.should eq 210
  end
end
