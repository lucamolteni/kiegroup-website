# frozen_string_literal: true

desc 'Build and minify all assets'
task :build do
  execute_task(:test)

  puts '== Building assets =='
  system! 'JEKYLL_ENV=production bundle exec jekyll build'
end
