require "simplefraction/version"

module Simplefraction
  class Fraction
	def initialize(numerator, denominator)
		@num = numerator
		@den = denominator
		@value = @num/@den
		update
	end
	def numerator
		return @num
	end
	def num
		return self.numerator
	end
	def num=(value)
		self.numerator=(value)
	end
	def numerator=(value)
		@num = value
		update
	end
	def denominator
		return @den
	end
	def denominator=(value)
		@den = value
		update
	end
	def den
		return self.denominator
	end
	def den=(value)
		self.denominator=(value)
	end
	def to_decimal
		update
		return @value
	end
	def to_d
		return self.to_decimal
	end
	def display
		return "(#{@num}/#{@den})"
	end
	
	private
	def update
		@value = @num/@den
	end
end

end
