require 'spec_helper'

describe 'dev_box::default' do
  %w{git sublime-text-installer vim}.each do |name|
    describe package(name) do
      it 'is installed' do
        expect(subject).to be_installed
      end
    end
  end
end
