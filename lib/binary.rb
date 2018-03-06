require "binary/version"

module Binary
  class Binary
	  def self.binary(number=nil)
	    if number.class == Integer
	      number.to_s(2)
	    end
	  end
	end
end
