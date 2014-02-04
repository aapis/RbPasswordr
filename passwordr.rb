require "openssl"
require "Time"
require "Base64"

class Passwordr
	def initialize(_base, _length)
		@base = _base;
		@length = _length;
		@password = self.make_hash();

		self.confusitizer();
	end

	def make_hash()
		_data = @base + Time.now.to_i.to_s;
		_hash = Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new("sha256"), @base, _data)).strip();
		
		_hash[1..@length]
	end

	def randomizer()

	end

	def get_specials()

	end

	def rediscombobulator()

	end

	def get_random_from_pos()

	end

	def confusitizer()
		
	end
end