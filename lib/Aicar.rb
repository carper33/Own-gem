require "Aicar/version"

module Aicar
	class Subtitle
		def initialize(file)
			@file = file

		end
		def content
			@content = IO.read(@file)
		end
		def dialogs
			content.split("\r\n\r\n").map do |dialog|
				lines = dialog.split("\r\n")
				id = lines.delete_at(0)
				time =  lines.delete_at(0)
				text = lines.join("\r\n")
				start_time, end_time = time.split(" --> ")
				Dialog.new(start_time,end_time,text,id)
			end

		end
	end
	class Dialog
		def initialize(start_time,end_time,text,id)
			@start_time = start_time
			@end_time = end_time
			@text = text
			@id = id

		end
		def start_time
			@start_time
		end
		def end_time
			@end_time
		end	
		def id
			@id
		end	
		def text
			@text
		end
	end
end
