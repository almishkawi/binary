require "binary/version"

module Binary
	def self.binary(input=nil)
		if input.class == Array
			input.map { |num| num.class == Integer ? num.to_s(2) : nil }
    elsif input.class == Integer
      input.to_s(2)
    end
  end
end
