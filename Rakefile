require 'digest'

HOSTNAME = 'refugeerpi2'

task :default => [:ssh]

desc 'SSH 接続して設定を行う'
task :ssh do
  role_files = Dir.glob('roles/*.rb')
  sh "bundle exec itamae ssh --host #{HOSTNAME} #{role_files.join(' ')}"
end
