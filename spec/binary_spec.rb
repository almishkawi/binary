RSpec.describe Binary do
  it "has a version number" do
    expect(Binary::VERSION).not_to be nil
  end

  it "takes an integer and returns its binary representation" do
    expect(Binary.binary(7)).to eq("111")
  end

  it "takes non-integer input and returns nil" do
    expect(Binary.binary('hey')).to eq(nil)
  end

  it "takes an array of numbers and returns an array of their binary values" do
    expect(Binary.binary([1,2,3])).to eq(["1", "10", "11"])
  end

  it "takes an array of numbers and returns nil for each non-integer element in the array" do
    expect(Binary.binary(['one','two',3])).to eq([nil, nil, "11"])
  end

  it "takes a binary string and returns its integer representation" do
    expect(Binary.number("111")).to eq(7)
  end

  it "takes an array of binary strings and returns an array of their integer values" do
    expect(Binary.number(["1", "10", "11"])).to eq([1,2,3])
  end

  it "returns number of bits in a number's binary representation" do
    expect(Binary.bits_count(7)).to eq(3)
  end

  it "returns number of ones in a number's binary representation" do
    expect(Binary.ones_count(7)).to eq(3)
  end

  it "returns number of zeros in a number's binary representation" do
    expect(Binary.zeros_count(9)).to eq(2)
  end

  it "returns an array of binaires of prime numbers" do
    expect(Binary.prime(9)).to eq(["10", "11", "101", "111"])
  end

  it "returns a binary representation of a random number between 1 and the given number" do
    expect(["1", "10", "11"]).to include(Binary.random(3))
  end
end
