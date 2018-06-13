# frozen_string_literal: true

# Add your own tasks in files placed in 'rakelib' ending in .rake,
# for example 'rakelib/capistrano.rake', and they will automatically be
# available to Rake.

# Add helper methods to '.rake' files
require_relative 'rakelib/rake_helper'
include Rakelib::RakeHelper

# Set default task
desc 'Run all tests by default'
task default: %w[test]
