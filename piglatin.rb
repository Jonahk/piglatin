class PigLatinTranslator
 
  def self.translate(phrase)
    words = phrase.split
    
    translated_words = words.map do |word|
      translate_word(word)
    end
    
    translated_words.join(" ")
  end
  
  def self.translate_word(word)
    if begins_with_vowel(word)
      word + 'way'
    else
      word = rotate_word(word)
      until begins_with_vowel(word)
        word = rotate_word(word)
      end
      word + 'ay'
    end
  end
  
  def self.begins_with_vowel(word)
    word.start_with?('a','e','i','o','u')
  end
  
  def self.begins_with_consonant(word)
    !word.start_with?('a','e','i','o','u')
  end
  
  def self.rotate_word(word)
    word[1..-1] + word[0]
  end
end