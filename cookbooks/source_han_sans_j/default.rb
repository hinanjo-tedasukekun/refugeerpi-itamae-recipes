base_dir = '/usr/local/share/fonts/opentype/SourceHanSansJ'
directory base_dir

weights = %w(Regular Bold)
weights.each do |weight|
  remote_file "#{base_dir}/SourceHanSans-#{weight}.otf"
end
