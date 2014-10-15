require 'spec_helper'

describe Bower do

  describe '.install' do
    it 'invokes install on the environment' do
      expect(Bower.environment).to receive(:install)
      Bower.install
    end
  end

  describe '.update' do
    it 'invokes update on the environment' do
      expect(Bower.environment).to receive(:update)
      Bower.update
    end
  end

  describe '.environment' do
    it 'returns a Bower::Environment' do
      expect(Bower.environment).to be_a(Bower::Environment)
    end
  end

end
