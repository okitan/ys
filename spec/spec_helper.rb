$: << File.join(File.dirname(__FILE__), %w[ .. lib ])
require 'ys'

require 'rubygems'
require 'rr'

Spec::Runner.configure do |config|
  config.mock_with :rr
end
