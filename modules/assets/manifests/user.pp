# == Class: assets::user
#
# Configures the 'assets' user and group.
#
class assets::user {
  group { 'assets':
    ensure => 'present',
    gid    => '2900',
  }

  user { 'assets':
    ensure  => 'present',
    home    => '/home/assets',
    shell   => '/bin/false',
    uid     => '2900',
    gid     => 'assets',
    require => [Group['assets']],
  }
}
