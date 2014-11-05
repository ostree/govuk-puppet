# FIXME: This class needs better documentation as per https://docs.puppetlabs.com/guides/style_guide.html#puppet-doc
class hosts::development {
  host { 'alert.cluster':       ip => '127.0.0.1' }
  host { 'backend.cluster':     ip => '127.0.0.1' }
  host { 'cache.cluster':       ip => '127.0.0.1' }
  host { 'data.cluster':        ip => '127.0.0.1' }
  host { 'frontend.cluster':    ip => '127.0.0.1' }
  host { 'mongodb.cluster':     ip => '127.0.0.1' }
  host { 'mysql.cluster':       ip => '127.0.0.1' }
  host { 'puppet.cluster':      ip => '127.0.0.1' }
  host { 'router.cluster':      ip => '127.0.0.1' }
  host { 'support.cluster':     ip => '127.0.0.1' }
  host { 'whitehall.cluster':   ip => '127.0.0.1' }

  host { 'api-external-link-tracker.dev.gov.uk':            ip => '127.0.0.1' }
  host { 'asset-manager.dev.gov.uk':                        ip => '127.0.0.1' }
  host { 'bouncer.dev.gov.uk':                              ip => '127.0.0.1' }
  host { 'business-support-api.dev.gov.uk':                 ip => '127.0.0.1' }
  host { 'businesssupportfinder.dev.gov.uk':                ip => '127.0.0.1' }
  host { 'calculators.dev.gov.uk':                          ip => '127.0.0.1' }
  host { 'calendars.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'canary-backend.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'canary-frontend.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'collections.dev.gov.uk':                          ip => '127.0.0.1' }
  host { 'collections-api.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'collections-publisher.dev.gov.uk':                ip => '127.0.0.1' }
  host { 'contacts-admin.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'contacts-frontend.dev.gov.uk':                    ip => '127.0.0.1' }
  host { 'contacts-frontend-old.dev.gov.uk':                ip => '127.0.0.1' }
  host { 'contentapi.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'content-register.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'content-store.dev.gov.uk':                        ip => '127.0.0.1' }
  host { 'designprinciples.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'efg.dev.gov.uk':                                  ip => '127.0.0.1' }
  host { 'email-alert-api.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'errbit.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'external-link-tracker.dev.gov.uk':                ip => '127.0.0.1' }
  host { 'feedback.dev.gov.uk':                             ip => '127.0.0.1' }
  host { 'finder-api.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'finder-frontend.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'frontend.dev.gov.uk':                             ip => '127.0.0.1' }
  host { 'govuk-delivery.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'hmrc-manuals-api.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'imminence.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'info-frontend.dev.gov.uk':                        ip => '127.0.0.1' }
  host { 'kibana.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'licencefinder.dev.gov.uk':                        ip => '127.0.0.1' }
  host { 'manuals-frontend.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'maslow.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'metadata-api.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'need-api.dev.gov.uk':                             ip => '127.0.0.1' }
  host { 'panopticon.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'private-frontend.dev.gov.uk':                     ip => '127.0.0.1' }
  host { 'publicapi.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'public-link-tracker.dev.gov.uk':                  ip => '127.0.0.1' }
  host { 'publisher.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'publishing-api.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'release.dev.gov.uk':                              ip => '127.0.0.1' }
  host { 'router-api.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'router.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'search.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'search-admin.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'service-manual.dev.gov.uk':                       ip => '127.0.0.1' }
  host { 'short-url-manager.dev.gov.uk':                    ip => '127.0.0.1' }
  host { 'signon.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'smartanswers.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'specialist-frontend.dev.gov.uk':                  ip => '127.0.0.1' }
  host { 'specialist-publisher.dev.gov.uk':                 ip => '127.0.0.1' }
  host { 'static.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'support.dev.gov.uk':                              ip => '127.0.0.1' }
  host { 'support-api.dev.gov.uk':                          ip => '127.0.0.1' }
  host { 'tariff-admin.dev.gov.uk':                         ip => '127.0.0.1' }
  host { 'tariff-api.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'tariff.dev.gov.uk':                               ip => '127.0.0.1' }
  host { 'transactions-explorer.dev.gov.uk':                ip => '127.0.0.1' }
  host { 'transition.dev.gov.uk':                           ip => '127.0.0.1' }
  host { 'travel-advice-publisher.dev.gov.uk':              ip => '127.0.0.1' }
  host { 'url-arbiter.dev.gov.uk':                          ip => '127.0.0.1' }
  host { 'whitehall-admin.dev.gov.uk':                      ip => '127.0.0.1' }
  host { 'whitehall-frontend.dev.gov.uk':                   ip => '127.0.0.1' }
  host { 'whitehall.dev.gov.uk':                            ip => '127.0.0.1' }
  host { 'www.dev.gov.uk':                                  ip => '127.0.0.1' }

  # The one Performance Platform host, required by publicapi in development only
  host { 'read.backdrop.dev.gov.uk':                        ip => '127.0.0.1' }
}
