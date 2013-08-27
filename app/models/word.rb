class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrammify(word)
    word_arr = word.downcase.split("")
  end
end
