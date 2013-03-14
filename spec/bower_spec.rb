require 'spec_helper'

describe Bower do

  describe '.install' do
    it 'invokes install on the environment' do
      Bower.environment.should_receive(:install).and_return
      Bower.install
    end
  end

  describe '.update' do
    it 'invokes update on the environment' do
      Bower.environment.should_receive(:update).and_return
      Bower.update
    end
  end

  describe '.environment' do
    it 'returns a Bower::Environment' do
      Bower.environment.should be_a(Bower::Environment)
    end
  end

end
