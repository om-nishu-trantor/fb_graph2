require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'rspec'
require 'rspec/its'
require 'fb_graph2'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
begin
	_files_to_require = Dir[File.join(__dir__, 'spec_helper/*.rb')]
rescue
	_files_to_require = Dir[File.join(File.dirname(File.realpath(__FILE__)), 'spec_helper/*.rb')]
end

_files_to_require.each do |file|
  require file
end