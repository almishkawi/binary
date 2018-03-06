RSpec.describe Binary do
  it "has a version number" do
    expect(Binary::VERSION).not_to be nil
  end

  it "takes an integer and returns a binary representation" do
    expect(Binary.binary(7)).to eq("111")
  end
end
