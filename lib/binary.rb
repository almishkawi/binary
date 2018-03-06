require "binary/version"

module Binary
	def self.binary(number=nil)
    if number.class == Integer
      number.to_s(2)
    end
  end
end
