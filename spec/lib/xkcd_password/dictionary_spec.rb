require 'spec_helper'
require 'xkcd_password'

describe XkcdPassword::Dictionary do

  let(:dictionary)  { XkcdPassword::Dictionary.new }
  let(:word_file)   { "/some/file/path.txt" }
  let(:lines)       { [ "word" ] }

  before do
    File.stub_chain(:open, :readlines).and_return( lines )
  end

  it "reads the given word file" do
    dictionary.call(word_file).should == lines
  end

  context "when words have trailing new line chars" do
    let(:lines) { [
      "first  \n",
      "second \n",
      "third  \n",
    ] }


    it "removes the trailing new lines" do
      dictionary.call(word_file).should == %w(
        first second third
      )
    end
  end

  context "when the word file contains more data per line" do
    let(:lines) { [
      "first  remove",
      "second this",
      "third  junk",
    ] }

    it "removes all chars from a line after the first word" do
      dictionary.call(word_file).should == %w(
        first second third
      )
    end

  end
end

