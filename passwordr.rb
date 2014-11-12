require "openssl"
require "Time"
require "Base64"

class Passwordr
	def initialize(_base, _length)
		@base = _base;
		@length = _length;
		
		print generate + "\n"
	end

	def generate()
		letters = ("a".."z")
		numbers = ("0".."9")
		symbols = ["=", "+", ")", "(", "*", "&", "^", "%", "#", "@", "~"]
		
		output = letters.to_a.shuffle[0..@length].join + symbols.shuffle[0..0].join

		
		output.crypt("$1$" + output)

		elements = output.split(//)
		elements[0..@length-1].join
	end
end