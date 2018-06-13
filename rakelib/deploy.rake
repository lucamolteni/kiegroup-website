# frozen_string_literal: true

desc 'Build, minify and deploy the website'
task :deploy do
  user_confirmation!

  puts '== Checking \'rsync\' =='
  installed = system('rsync --version', out: File::NULL)
  exit('[ERROR] \'rsync\' is not installed.') unless installed

  execute_task(:test)
  execute_task(:build)

  puts '== Deploying website =='
  puts 'Authentication type (for filemgmt.jboss.org):'
  puts '  a) SSH key'
  puts '  b) Password'
  puts '  c) Abort'

  deploy_url = 'kiegroup@filemgmt.jboss.org:/www_htdocs/kiegroup'

  case STDIN.gets.strip
  when 'a'
    puts 'Type the SSH key location (e.g. ~/.ssh/drools):'
    ssh_path = STDIN.gets.strip
    puts 'Deploying...'
    system("rsync -Pqr --protocol=28 -e \"ssh -i #{ssh_path}\" "\
           "--delete-after _site/* #{deploy_url}")
  when 'b'
    puts 'Deploying...'
    system("rsync -Pqr --protocol=28 --delete-after _site/* #{deploy_url}")
  else
    exit
  end
end
