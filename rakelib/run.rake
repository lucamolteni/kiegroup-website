# frozen_string_literal: true

desc 'Run the website in development mode'
task :run do
  puts '== Running development mode =='
  system! 'bundle exec jekyll serve --incremental'
end
