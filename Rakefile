require 'digest'

HOSTNAME = 'refugeerpi2'

task :default => [:ssh]

desc 'SSH 接続して設定を行う'
task :ssh do
  role_files = Dir.glob('roles/*.rb')
  sh "bundle exec itamae ssh --host #{HOSTNAME} #{role_files.join(' ')}"
end

desc '必要なフォントをダウンロードする'
task :download_fonts do
  root_dir = 'cookbooks/source_han_sans_j/files/usr/local/share/fonts/opentype/SourceHanSansJ'
  base_url = 'https://raw.githubusercontent.com/adobe-fonts/source-han-sans/5f5311e71cb628321cc0cffb51fb38d862b726aa/OTF/Japanese'
  weights = %w(Regular Bold)
  sha256sum = {
    'Regular' => 'cf2fea98f3414377f2d1c3ae3403d099659aec327f8bcb816b703d83f8c75b3c',
    'Bold' => 'ec0a9b2c3f853a2dc0e4e3c484166e87f09436cbb91634cee3173b332ecc5e5b'
  }

  weights.each do |weight|
    filename = "SourceHanSans-#{weight}.otf"
    path = "#{root_dir}/#{filename}"
    unless File.exist?(path) && Digest::SHA256.file(path).hexdigest == sha256sum[weight]
      url = "#{base_url}/#{filename}"
      sh "curl -o #{path} #{url}"
    end
  end
end
