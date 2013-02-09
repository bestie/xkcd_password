require 'spec_helper'
require 'xkcd_password'
require 'xkcd_password/cli'

describe "Password generation" do

  let(:executable)  { "./bin/xkcd_password" }
  let(:word_file)   { File.open("./lib/assets/common_words.txt") }

  it "chooses four random words from the word file and outputs to STDOUT" do
    output = %x[ #{executable} ].chomp

    puts output
    words = output.split(/ /)

    words.all? { |word| exists_in_word_file?(word) }.should be_true
  end

  def exists_in_word_file?(word)
    words_in_file.any? { |wif| wif.chomp == word }
  end

  def words_in_file
    @word_file_lines ||= word_file.readlines.map { |line| line.gsub(/ .*$/,'') }
  end

end

