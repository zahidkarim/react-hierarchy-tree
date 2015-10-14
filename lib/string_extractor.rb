class StringExtractor
  def self.extract(file, word_to_match)
    start_index = file.index(word_to_match)
    end_index = file.length

    file.slice(start_index..end_index)
  end
end
