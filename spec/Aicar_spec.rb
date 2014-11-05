require 'spec_helper'
 
module Aicar 
	describe Subtitle do
		it "leer subtitulos" do
			subtitle = Subtitle.new("/vagrant/ruby/Oriol/TDD/Aicar/spec/The_Walking.srt")
			expect(subtitle.content).to include("Little girl.")
		end
		it "does something" do
			subtitle = Subtitle.new("/vagrant/ruby/Oriol/TDD/Aicar/spec/The_Walking.srt")
			expect(subtitle.dialogs.length).to eq(463)
		end
		it "sets the dialogs attributes" do
			subtitle = Subtitle.new("/vagrant/ruby/Oriol/TDD/Aicar/spec/The_Walking.srt")
			dialog= subtitle.dialogs.first
			expect(dialog.start_time).to eq("00:02:26,371")
			expect(dialog.end_time).to eq("00:02:36,570")
			expect(dialog.text).to eq("Sync by YYeTs.net\r\nwww.addic7ed.com")
			expect(dialog.id).to eq("1")
		end	
	end
	describe Dialog do
		it "Process Dialogs" do			
		
		end	
	end
end	
