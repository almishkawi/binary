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

  it "takes an integer and returns number of bits in its binary representation" do
    expect(Binary.bits(7)).to eq(3)
  end

  it "takes an integer and returns number of ones in its binary representation" do
    expect(Binary.ones(7)).to eq(3)
  end

  it "takes an integer and returns number of zeros in its binary representation" do
    expect(Binary.ones(9)).to eq(2)
  end

  it "takes an input number and returns an array of binaires of all prime numbers from 2 up to the given input" do
    expect(Binary.prime(9)).to eq(["10", "11", "101", "111"])
  end
end
