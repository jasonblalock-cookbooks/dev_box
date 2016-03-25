require 'spec_helper'

describe 'dev_box::aux_packages' do
  describe package('vim') do
    it 'is installed' do
      expect(subject).to be_installed
    end
  end
end
