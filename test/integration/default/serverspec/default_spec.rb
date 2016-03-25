require 'spec_helper'

describe 'dev_box::default' do
  describe 'dev_box::aux_packages' do
    describe package('vim') do
      it 'is installed' do
        expect(subject).to be_installed
      end
    end
  end

  describe 'dev_box::main_user' do
    describe user('jason') do
      it 'exists' do
        expect(subject).to exist
      end

      it 'belongs to the correct groups' do
        expect(subject).to belong_to_group('jason')
        expect(subject).to belong_to_group('sudo')
      end

      it 'has correct home' do
        expect(subject).to have_home_directory('/home/jason')
      end

      it 'has correct shell' do
        expect(subject).to have_login_shell('/bin/bash')
      end
    end
  end

  describe 'dev_box::docker' do
    describe package('docker') do
      expect(subject).to be_installed.with_version('1.10.2')
    end

    describe service('docker') do
      expect(subject).to be_enabled
      expect(subject).to be_running
    end
  end
end
