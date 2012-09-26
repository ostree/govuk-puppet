require_relative '../../spec_helper'

describe 'govuk_node::frontend_server', :type => :class do
  context 'in preview' do
    let(:facts) { { :govuk_class => "frontend", :govuk_platform => 'preview' } }
    it do
      should_not raise_error(Puppet::ParseError)
      should include_class('govuk::apps::frontend')
      should include_class('govuk::apps::static')
    end
  end

  # Don't want to deploy unicorn search at the moment, still testing
  # -- ppotter, 2012-09-04
  context 'in production' do
    let(:facts) { { :govuk_class => "frontend", :govuk_platform => 'production' } }
    it do
      should_not raise_error(Puppet::ParseError)
      should include_class('govuk::apps::frontend')
      should include_class('govuk::apps::static')
    end
  end
end
