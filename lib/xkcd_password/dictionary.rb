class XkcdPassword::Dictionary

  def call(word_file)
    File.open(word_file).readlines.map { |line| line.gsub(/ .*$/, '').chomp }
  end

end

