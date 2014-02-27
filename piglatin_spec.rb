require 'rspec'
require_relative 'pig_latin.rb'

describe PigLatinTranslator do

  it 'word starting with a consonant' do
    translated = PigLatinTranslator.translate_word('pillow')
    expect(translated).to eql('illowpay')
  end

  it 'word starting with a vowel' do
    translated = PigLatinTranslator.translate_word('apple')
    expect(translated).to eql('appleway')
  end

  it 'word starting with a consonant cluster' do
    translated = PigLatinTranslator.translate_word('glove')
    expect(translated).to eq('oveglay')
  end

  it 'translates entire phrase' do
    translated = PigLatinTranslator.translate('this is a phrase')
    expect(translated).to eq('isthay isway away asephray')
  end
end