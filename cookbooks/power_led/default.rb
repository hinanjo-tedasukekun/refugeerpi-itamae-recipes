# 「動作中」LED 関連レシピ

package 'nginx'
package 'sqlite3'
package 'libsqlite3-dev'
package 'firebird2.5-superclassic'
package 'firebird-dev'
package 'nodejs'

remote_file '/usr/local/sbin/power_led_on' do
  mode '744'
end

remote_file '/etc/systemd/system/power-led-on.service'

service 'power-led-on' do
  action [:start, :enable]
end
