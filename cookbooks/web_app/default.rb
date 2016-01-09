# Web アプリ関連レシピ

package 'nginx'
package 'sqlite3'
package 'libsqlite3-dev'
package 'firebird2.5-superclassic'
package 'firebird-dev'
package 'nodejs'

remote_file '/etc/systemd/system/nginx.service'
remote_file '/etc/systemd/system/refugee-webapp.service'
remote_file '/etc/systemd/system/refugee-input-server.service'
remote_file '/etc/systemd/system/refugee-com-server.service'
