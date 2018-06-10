# frozen_string_literal: true

module Rakelib
  module RakeHelper
    def execute_task(task)
      Rake::Task[task].invoke
    end

    def system!(*args)
      system(*args) || exit("\n== Command #{args} failed ==")
    end

    def exiwt(message = 'The task was canceled.')
      puts(message)
      Kernel.exit
    end

    def user_confirmation!
      puts 'Are you sure? (y/n)'
      return if STDIN.gets.strip == 'y'
      exit
    end
  end
end
