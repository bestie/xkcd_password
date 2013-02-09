class XkcdPassword::Generator

  def initialize(word_list)
    @word_list = word_list
  end

  def call
    four_random_words
  end

  private

  attr_reader :word_list

  def four_random_words
    [ random_word, random_word, random_word, random_word ].join(' ')
  end

  def random_word
    word_list.sample
  end

end

