# Ruby 関連レシピ

package 'autoconf'
package 'bison'
package 'build-essential'
package 'libssl-dev'
package 'libyaml-dev'
package 'libreadline6-dev'
package 'zlib1g-dev'
package 'libncurses5-dev'
package 'libffi-dev'
package 'libgdbm3'
package 'libgdbm-dev'

git '/usr/local/rbenv' do
  repository 'https://github.com/rbenv/rbenv.git'
end

remote_file '/etc/profile.d/rbenv.sh'

directory '/usr/local/rbenv/plugins'

git '/usr/local/rbenv/plugins/ruby-build' do
  repository 'https://github.com/rbenv/ruby-build.git'
end

git '/usr/local/rbenv/plugins/rbenv-update' do
  repository 'https://github.com/rkh/rbenv-update.git'
end

git '/usr/local/rbenv/plugins/rbenv-default-gems' do
  repository 'https://github.com/rbenv/rbenv-default-gems.git'
end

remote_file '/usr/local/rbenv/default-gems'
