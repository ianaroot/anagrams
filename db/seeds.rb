require 'pry'

class WordSeeder
  def self.populate_database
    binding.pry
    File.open('./db/data/words.txt').each do |word|
      Word.create(entry: word.strip) # make this work with 'word'
    end
  end
end

WordSeeder.populate_database
