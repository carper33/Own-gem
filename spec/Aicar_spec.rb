require 'spec_helper'
 
module Aicar 
	describe Subtitle do
		it "leer subtitulos" do
			subtitle = Subtitle.new("/vagrant/ruby/Oriol/TDD/Aicar/spec/The_Walking.srt")
			expect(subtitle.content).to include("Little girl.")
		end	
	end
end	