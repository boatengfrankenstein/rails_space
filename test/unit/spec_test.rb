require 'test_helper'

class SpecTest < ActiveSupport::TestCase

	# Test saving blank spec
	def test_blank
		blank = Spec.new
		assert blank.save, blank.errors.full_messages.join("\n")
	end

	
end
