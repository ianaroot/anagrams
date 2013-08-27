require 'pry'
class Word < ActiveRecord::Base
  def self.anagrammify(word)
    word = word.downcase.split("")
    possible_anagrams = [] 
    possible_anagrams = Word.where(length: word.length)
    anagrams = []
    possible_anagrams.each do |possibility|
      # binding.pry
      anagrams << possibility.entry if word.sort == possibility.entry.downcase.split('').sort
    end
  anagrams
  end
end
