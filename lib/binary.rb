require "binary/version"
require "prime"

module Binary
  def self.binary(input=nil)
    if input.class == Array
      input.map { |num| num.class == Integer ? num.abs.to_s(2) : nil }
    elsif input.class == Integer
      input = input.abs if input < 0
      input.to_s(2)
    else
      nil
    end
  end

  def self.number(input=nil)
    if input.class == Array
      input.map { |num| num.class == String ? num.to_i(2) : nil }
    elsif input.class == String
      input.to_i(2)
    else
      nil
    end
  end

  def self.bits num=nil
    return nil unless num
    binary = binary(num)
    binary.length
  end

  def self.zeros num=nil
    return nil unless num
    binary = binary(num)
    binary.count("0")
  end

  def self.ones num=nil
    return nil unless num
    binary = binary(num)
    binary.count("1")
  end

  def self.prime num=nil
    return nil unless num
    binaries = []
    Prime.each(num) do |prime|
      binaries << binary(prime)
    end
    binaries
  end

  def self.method_missing(method, *args, &block)
    puts "There is no method called #{method} in Binary."
    p 'methods available are:'
    ['binary', 'number', 'bit', 'zeros', 'ones', 'prime'].each { |m| p "#{m}" }
    nil
  end
end
