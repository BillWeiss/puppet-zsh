require 'spec_helper'

describe 'zsh' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "zsh class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should include_class('zsh::params') }

        it { should contain_class('zsh::install') }
        it { should contain_class('zsh::config') }
        it { should contain_class('zsh::service') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'zsh class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
