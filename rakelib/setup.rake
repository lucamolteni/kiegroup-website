# frozen_string_literal: true

desc 'Install KIE Group website dependencies'
task :setup do
  puts '== Installing bundler =='
  system!('gem install bundler --conservative')

  puts '== Installing dependencies =='
  system('bundle check') || system!('bundle install')

  puts '== Success! :-) == '
end
