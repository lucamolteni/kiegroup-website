# frozen_string_literal: true

require 'fileutils'

desc 'Clean out generated site and temporary files'
task :clean do
  %w[.sass-cache _site].each do |dir|
    FileUtils.remove_dir dir if File.directory? dir
  end
end
