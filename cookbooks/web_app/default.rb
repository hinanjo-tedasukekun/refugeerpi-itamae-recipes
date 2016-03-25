# Web アプリ関連レシピ

package 'nginx'
package 'sqlite3'
package 'libsqlite3-dev'
package 'firebird2.5-superclassic'
package 'firebird-dev'
package 'nodejs'

remote_file '/etc/nginx/sites-available/refugee_manager'

link '/etc/nginx/sites-enabled/refugee_manager' do
  to '../sites-available/refugee_manager'
end


services = %w(
nginx
refugee-webapp
refugee-input-server
refugee-com-server
refugee-display-server
shelter-dashboard
)

services.each do |s|
  remote_file "/etc/systemd/system/#{s}.service"

  service s do
    action :enable
  end
end
