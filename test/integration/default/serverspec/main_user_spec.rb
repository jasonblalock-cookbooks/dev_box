require 'spec_helper'

describe 'dev_box::main_user' do
  describe user('jason') do
    it 'exists' do
      expect(subject).to exist
    end

    it 'belongs to the correct groups' do
      expect(subject).to belong_to_group('jason')
      expect(subject).to belong_to_group('sudo')
    end

    it 'has correct home directory' do
      expect(subject).to have_home_directory('/home/jason')
    end

    it 'has correct shell' do
      expect(subject).to have_login_shell('/bin/bash')
    end
  end
end
