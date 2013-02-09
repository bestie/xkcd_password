class XkcdPassword::Cli

  def initialize(word_file, stdout = STDOUT, generator_class = XkcdPassword::Generator, dictionary_class = XkcdPassword::Dictionary)
    @word_file = word_file
    @generator = generator_class.new(dictionary_class.new.call(word_file))
    @stdout = stdout
  end

  def call
    stdout.puts generator.call
  end

  private

  attr_reader :word_file, :stdout, :generator

end

