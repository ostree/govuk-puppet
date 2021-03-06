# == Class: govuk::apps::email_alert_api:checks
#
# Various Icinga checks for Email Alert API.
#
class govuk::apps::email_alert_api::checks(
  $ensure = present,
) {

  sidekiq_queue_check {
    'delivery_transactional':
      latency_warning  => '300', # 5 minutes
      latency_critical => '600'; # 10 minutes

    'delivery_immediate':
      latency_warning  => '1200', # 20 minutes
      latency_critical => '1800'; # 30 minutes

    'delivery_immediate_high':
      latency_warning  => '300', # 5 minutes
      latency_critical => '600'; # 10 minutes

    'delivery_digest':
      latency_warning  => '3600', # 60 minutes
      latency_critical => '5400'; # 90 minutes
  }

  @@icinga::check::graphite { 'email-alert-api-unprocessed-content-changes':
    ensure    => $ensure,
    host_name => $::fqdn,
    target    => 'transformNull(keepLastValue(averageSeries(stats.gauges.govuk.app.email-alert-api.*.content_changes.unprocessed_total)))',
    warning   => '0',
    critical  => '0',
    from      => '15minutes',
    desc      => 'email-alert-api - unprocessed content changes older than 120 minutes',
    notes_url => monitoring_docs_url(email-alert-api-unprocessed-content-changes),
  }

  @@icinga::check::graphite { 'email-alert-api-critical-digest-runs':
    ensure    => $ensure,
    host_name => $::fqdn,
    target    => 'transformNull(keepLastValue(averageSeries(stats.gauges.govuk.app.email-alert-api.*.digest_runs.critical_total)))',
    warning   => '0',
    critical  => '0',
    from      => '1hour',
    desc      => 'email-alert-api - incomplete digest runs - critical',
    notes_url => monitoring_docs_url(email-alert-api-incomplete-digest-runs),
  }

  @@icinga::check::graphite { 'email-alert-api-unprocessed-messages':
    ensure    => $ensure,
    host_name => $::fqdn,
    target    => 'transformNull(keepLastValue(averageSeries(stats.gauges.govuk.app.email-alert-api.*.messages.unprocessed_total)))',
    warning   => '0',
    critical  => '0',
    from      => '1hour',
    desc      => 'email-alert-api - unprocessed messages older than 120 minutes',
    notes_url => monitoring_docs_url(email-alert-api-unprocessed-messages),
  }
}
