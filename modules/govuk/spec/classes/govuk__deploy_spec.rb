require_relative '../../../../spec_helper'

describe 'govuk::deploy::setup', :type => :class do
  let(:authorized_keys_path) { '/home/deploy/.ssh/authorized_keys' }

  context 'keys provided' do
    let(:params) {{
      'ssh_keys'              => {
        'foo' => 'oneapple',
        'bar' => 'twopears',
        'baz' => 'threeplums',
      }
    }}

    it 'authorized_keys should have all keys active and sorted by comment' do
      is_expected.to contain_file(authorized_keys_path).with_content(<<eos
ssh-rsa twopears bar
ssh-rsa threeplums baz
ssh-rsa oneapple foo
eos
      )
    end
  end

  context 'keys not provided' do
    let(:params) {{
    }}

    it 'authorized_keys should only contain commented keys' do
      is_expected.to contain_file(authorized_keys_path).with_content(/ NONE_IN_HIERA /)
      is_expected.to contain_file(authorized_keys_path).without_content(/^[^#]/)
    end
  end
end
