require 'spec_helper'

describe 'pam::params' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_class('pam::params') }
    end
  end
end
