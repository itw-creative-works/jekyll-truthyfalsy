require 'jekyll'
require 'jekyll-truthyfalsy'

RSpec.describe Jekyll::TruthyFalsy do
  let(:truthyfalsy) { described_class.new }

  describe '#istruthy' do
    it 'returns true for non-empty string' do
      expect(truthyfalsy.istruthy('hello')).to be(true)
    end

    it 'returns false for empty string' do
      expect(truthyfalsy.istruthy('')).to be(false)
    end

    it 'returns true for true boolean' do
      expect(truthyfalsy.istruthy(true)).to be(true)
    end

    it 'returns false for false boolean' do
      expect(truthyfalsy.istruthy(false)).to be(false)
    end

    it 'returns false for nil' do
      expect(truthyfalsy.istruthy(nil)).to be(false)
    end
  end

  describe '#isfalsy' do
    it 'returns false for non-empty string' do
      expect(truthyfalsy.isfalsy('hello')).to be(false)
    end

    it 'returns true for empty string' do
      expect(truthyfalsy.isfalsy('')).to be(true)
    end

    it 'returns false for true boolean' do
      expect(truthyfalsy.isfalsy(true)).to be(false)
    end

    it 'returns true for false boolean' do
      expect(truthyfalsy.isfalsy(false)).to be(true)
    end

    it 'returns true for nil' do
      expect(truthyfalsy.isfalsy(nil)).to be(true)
    end
  end
end
