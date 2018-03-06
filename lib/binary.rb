require "binary/version"

module Binary
	def self.binary(input=nil)
		if input.class == Array
			input.map { |num| num.to_s(2) }
    elsif input.class == Integer
      input.to_s(2)
    end
  end
end
