ENV['BUNDLE_GEMFILE'] ||= File.expand_path('./Gemfile', __dir__)
puts $:.length
require 'bundler/setup' # Set up gems listed in the Gemfile.
puts $:.length

require 'rails/all'
require_relative "module2"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require "rake"
# puts Rake
include Rake::DSL
puts Rake
