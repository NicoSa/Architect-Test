module SpecHelper

	RSpec.configure do |config|
	  config.mock_with :rspec do |c|
	    c.syntax = [:should, :expect]
	  end
	end

end