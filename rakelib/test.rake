# frozen_string_literal: true

desc 'Run all tests and code style analyzers'
task :test do
  puts '== Analyzing code style =='
  system!('rubocop')
end
