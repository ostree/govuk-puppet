require_relative '../../../../spec_helper'

describe 'govuk_jenkins::job_builder_update', :type => :class do

  it { is_expected.to compile }

  it { is_expected.to compile.with_all_deps }

  it { is_expected.to contain_class('govuk_jenkins::job_builder_update') }
end
