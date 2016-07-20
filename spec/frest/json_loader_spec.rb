require 'spec_helper'

describe Frest::JsonLoader do
  it 'has a version number' do
    expect(Frest::JsonLoader::VERSION).not_to be nil
  end

  it 'can load JSON' do
    f      = File.read('spec/test_data/test.json')
    result = Frest::JsonLoader::load(content: f, id: 'test')

    expect(result).to match('a' => 1, 'b' => 2)
  end
end
