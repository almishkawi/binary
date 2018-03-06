RSpec.describe Binary do
  it "has a version number" do
    expect(Binary::VERSION).not_to be nil
  end

  it "takes an integer and returns a binary representation" do
    expect(Binary.binary(7)).to eq("111")
  end

  it "non-integer input should return nil" do
    expect(Binary.binary('hey')).to eq(nil)
  end

  it "takes an array of numbers and returns an array of binary values" do
    expect(Binary.binary([1,2,3])).to eq(["1", "10", "11"])
  end

  it "each non-integer element in the array input should return nil" do
    expect(Binary.binary(['one','two',3])).to eq([nil, nil, "11"])
  end
end
