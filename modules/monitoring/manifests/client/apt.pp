# FIXME: This class needs better documentation as per https://docs.puppetlabs.com/guides/style_guide.html#puppet-doc
class monitoring::client::apt {

  @icinga::plugin { 'check_apt_security_updates':
    source  => 'puppet:///modules/monitoring/usr/lib/nagios/plugins/check_apt_security_updates',
  }

  @icinga::nrpe_config { 'check_apt_security_updates':
    source  => 'puppet:///modules/monitoring/etc/nagios/nrpe.d/check_apt_security_updates.cfg',
    require => Icinga::Plugin['check_apt_security_updates'],
  }

  @@icinga::check { "check_apt_security_updates_${::hostname}":
    check_command              => 'check_nrpe!check_apt_security_updates!0 0',
    service_description        => 'outstanding security updates',
    host_name                  => $::fqdn,
    attempts_before_hard_state => 24, # Wait 24hrs to allow unattended-upgrades to run first
    check_interval             => 60, # Save cycles, apt-get update only runs every 30m
    retry_interval             => 60,
    notes_url                  => monitoring_docs_url(security-updates),
  }

  @icinga::plugin { 'check_reboot_required':
    source  => 'puppet:///modules/monitoring/usr/lib/nagios/plugins/check_reboot_required',
  }

  @icinga::nrpe_config { 'check_reboot_required':
    source  => 'puppet:///modules/monitoring/etc/nagios/nrpe.d/check_reboot_required.cfg',
    require => Icinga::Plugin['check_reboot_required'],
  }
}
