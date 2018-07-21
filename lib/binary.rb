require_relative 'binary/extensions.rb'
require 'binary/version'
require 'prime'

module Binary
  def self.binary(i=nil)
    return nil if block_given?
    return i.map { |n| n.class == Integer ? n.abs.to_s(2) : nil } if array? i
    i = i.abs if i.to_i < 0
    return i.to_s(2) if i.class == Integer
    nil
  end

  def self.number(i=nil)
    return i.map { |n| n.class == String ? n.to_i(2) : nil } if array? i
    return i.to_i(2) if i.class == String
    nil
  end

  def self.array?(i)
  	i.class == Array
  end

  def self.bits num=nil
    return nil unless num
    binary(num).length
  end

  def self.zeros num=nil
    return nil unless num
    binary(num).count("0")
  end

  def self.ones num=nil
    return nil unless num
    binary(num).count("1")
  end

  def self.prime num=nil
    return nil unless num
    binaries = []
    binaries = Prime.each(num) { |prime| binaries << binary(prime) }
  end

  def self.method_missing(method, *args, &block)
    puts "No method was found with the name #{method}."
    puts 'Methods available are:'
    puts (Binary.methods - Object.methods - [:method_missing])
  end
end
