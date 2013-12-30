# Class: roundcube::params
#
# Default parameters for the roundcube class.
#
class roundcube::params {
  $version = '0.9.5'
  $md5 = '757f6ab3306d4abf8da6664ae65138d7'

  # default configuration values
  $db_type = 'postgresql'
  $db_name = 'roundcubemail'
  $db_host = 'localhost'
  $db_user = 'roundcube'
  $db_password = 'pass'

  $package_dir = $::operatingsystem ? {
    default => '/var/cache/puppet/archives',
  }

  $install_dir = $::operatingsystem ? {
    default => '/opt',
  }
}
