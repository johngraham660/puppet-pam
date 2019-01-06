require 'spec_helper'

describe 'pam::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_class('pam::service') }
    end
  end
end
