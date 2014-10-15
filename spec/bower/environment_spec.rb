require 'spec_helper'

describe Bower::Environment do
  context 'when initializing from a file' do
    subject { Bower::Environment.setup(File.join(fixture_path, '.bowerrc')) }

    it 'uses the specified directory' do
      expect(subject.directory).to eq('lib/assets/javascripts')
    end

    it 'uses the specified json' do
      expect(subject.json).to eq('bower.json')
    end
  end

  context 'defaults' do
    subject { Bower::Environment.setup }

    it 'uses a default directory' do
      expect(subject.directory).to eq('bower_components')
    end

    it 'uses a default json' do
      expect(subject.json).to eq('bower.json')
    end
  end

  describe '#install' do
    subject { Bower::Environment.new }

    it 'invokes "bower update"' do
      expect(subject).to receive(:run).with('bower install').and_return(true)
      subject.install
    end
  end

  describe '#update' do
    subject { Bower::Environment.new }

    it 'invokes "bower update"' do
      expect(subject).to receive(:run).with('bower update').and_return(true)
      subject.update
    end
  end

  describe '#run' do
    subject { Bower::Environment.new }
    it 'returns nil when the directory does not exist' do
      allow(Dir).to receive(:exists?).and_return(false)

      expect(subject.send(:run, 'bower update')).to be_nil
    end

    it 'returns nil when the component file does not exist' do
      allow(Dir).to receive(:exists?).with(subject.directory).and_return(true)
      expect(Dir).to receive(:chdir).with(subject.directory).and_yield
      allow(File).to receive(:exists?).and_return(false)

      expect(subject.send(:run, 'bower update')).to be_nil
    end

    it 'invokes the shell command wheh the component file exists' do
      allow(Dir).to receive(:exists?).with(subject.directory).and_return(true)
      allow(Dir).to receive(:chdir).with(subject.directory).and_yield
      allow(File).to receive(:exists?).and_return(true)
      expect(subject).to receive(:`)

      expect(subject.send(:run, 'bower update')).to be_nil
    end
  end
end
