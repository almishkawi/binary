require "binary/version"
require "prime"

module Binary
  def self.binary(input=nil)
    if input.class == Array
      input.map { |num| num.class == Integer ? num.to_s(2) : nil }
    elsif input.class == Integer
      input = input.abs if input < 0
      input.to_s(2)
    else
      nil
    end
  end

  def self.bits num
    binary = binary(num) if num
    binary.length
  end

  def self.zeros num
    binary = binary(num) if num
    binary.count("0")
  end

  def self.ones num
    binary = binary(num) if num
    binary.count("1")
  end
end
