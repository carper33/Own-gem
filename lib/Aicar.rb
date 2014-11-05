require "Aicar/version"

module Aicar
	class Subtitle
		def initialize(file)
			@file = file

		end
		def content
			IO.read(@file)
		end
	end
end
