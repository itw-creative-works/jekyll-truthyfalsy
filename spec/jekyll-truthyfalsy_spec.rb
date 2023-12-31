require 'jekyll-truthyfalsy'

RSpec.describe Jekyll::TruthyFalsy do
  # Dummy class to include the filter methods
  class DummyClass
    include Jekyll::TruthyFalsy
  end

  let(:dummy) { DummyClass.new }

  # Truthy values
  describe '.istruthy' do
    it 'returns true for non-empty string' do
      expect(dummy.istruthy('hello')).to be(true)
    end

    it 'returns false for empty string' do
      expect(dummy.istruthy('')).to be(false)
    end

    it 'returns true for true boolean' do
      expect(dummy.istruthy(true)).to be(true)
    end

    it 'returns false for false boolean' do
      expect(dummy.istruthy(false)).to be(false)
    end

    it 'returns false for nil' do
      expect(dummy.istruthy(nil)).to be(false)
    end

    it 'returns true for integer 1' do
      expect(dummy.istruthy(1)).to be(true)
    end

    it 'returns false for integer 0' do
      expect(dummy.istruthy(0)).to be(false)
    end
  end
  
  # Falsy values
  describe '.isfalsy' do
    it 'returns false for non-empty string' do
      expect(dummy.isfalsy('hello')).to be(false)
    end

    it 'returns true for empty string' do
      expect(dummy.isfalsy('')).to be(true)
    end

    it 'returns false for true boolean' do
      expect(dummy.isfalsy(true)).to be(false)
    end

    it 'returns true for false boolean' do
      expect(dummy.isfalsy(false)).to be(true)
    end

    it 'returns true for nil' do
      expect(dummy.isfalsy(nil)).to be(true)
    end

    it 'returns false for integer 1' do
      expect(dummy.isfalsy(1)).to be(false)
    end

    it 'returns true for integer 0' do
      expect(dummy.isfalsy(0)).to be(true)
    end
  end
end
