require 'spec_helper'
require 'binary'
require 'binary/extensions'

RSpec.describe Binary, 'extensions' do
	describe Array do
    describe '#to_b' do
    	it "converts array of integers into binaries" do
    		expect([7, 9, 11].to_b).to eq(["111", "1001", "1011"])
    	end
    end

    describe '#to_num' do
    	it "converts array of binaries into integers" do
    		expect(["111", "1001", "1011"].to_num).to eq([7, 9, 11])
    	end
    end
  end

  describe Integer do
    describe '#to_b' do
    	it "converts an integer into a binary" do
    		expect(7.to_b).to eq("111")
    	end
    end
  end

  describe String do
    describe '#to_num' do
    	it "converts a binary into an integer" do
    		expect("1001".to_num).to eq(9)
    	end
    end
  end
end