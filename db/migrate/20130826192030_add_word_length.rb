class AddWordLength < ActiveRecord::Migration
  def change
    add_column :words, :length, :integer

    Word.all.each do |word|
      word[:length] = word.entry.length
      word.save
    end
  end
end
