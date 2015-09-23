HOSTNAME = 'refugeerpi2'

task :default => [:ssh]

desc 'SSH 接続して設定を行う'
task :ssh do
  Dir.glob('roles/*.rb') do |role_file|
    sh "bundle exec itamae ssh --host #{HOSTNAME} #{role_file}"
  end
end
