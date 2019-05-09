require_relative 'binary/extensions'

require 'binary/version'
require 'prime'

module Binary
  class << self
    def binary(i = 0)
      return if i.is_a?(Hash)

      return i.map { |e| e.is_a?(Integer) ? e.abs.to_s(2) : nil } if i.is_a?(Array)

      i = i.abs if i&.to_i < 0
      return i.to_s(2) if i.is_a?(Integer)
    end

    def number(i=nil)
      return i.map { |e| e.is_a?(String) ? e.to_i(2) : nil } if i.is_a?(Array)
      return i.to_i(2) if i.is_a?(String)
    end

    def bits_count(num)
      binary(num).length
    end

    def zeros_count(num)
      binary(num).count("0")
    end

    def ones_count(num)
      binary(num).count("1")
    end

    def prime(num)
      Prime.each(num).map { |prime| binary(prime) }
    end

    def method_missing(method, *args, &block)
      puts "No method found: #{method}"

      puts 'Methods available are:'
      puts (Binary.methods - Object.methods - [:method_missing])
    end
  end
end
