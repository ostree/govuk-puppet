class govuk::node::s_support inherits govuk::node::s_base {
  include solr
  include apollo
  include apt_cacher::server
  include apt_cacher::client

  if $::govuk_platform == 'preview' {
    $mysql_host     = 'rds.cluster'
    $mysql_user     = 'backup'
    $mysql_password = extlookup('mysql_preview_backup', '')

    file { '/home/deploy/.my.cnf':
      ensure  => file,
      owner   => 'deploy',
      group   => 'deploy',
      mode    => '0600',
      require => User['deploy'],
      content => "[client]
host=${mysql_host}
user=${mysql_user}
password=${mysql_password}
"
    }
  }

  include java::openjdk6::jre
  class {'elasticsearch':
      require => Class['java::openjdk6::jre'],
  }
  elasticsearch::node { "govuk-${::govuk_platform}": }
}
