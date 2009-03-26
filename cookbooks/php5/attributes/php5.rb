php5 Mash.new unless attribute?("php5")
php5[:version] = "5.2.9" unless php5.has_key?(:version)
php5[:path] = "/usr/local/php" unless php5.has_key?(:path)
php5[:module_path] = File.join(php5[:path], "apache2/libphp5.so") unless php5.has_key?(:module_path)
php5[:tar_pkg] = "php-#{php5[:version]}-#{platform}-#{platform_version}-#{kernel[:machine]}.tar.bz2" unless php5.has_key?(:tar_pkg)
php5[:dist_url] = "http://dist/packages/#{php5[:tar_pkg]}" unless php5.has_key?(:dist_url)
