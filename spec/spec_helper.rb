# ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'byebug'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details
Capybara.app = RockPaperScissors
