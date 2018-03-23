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
end
