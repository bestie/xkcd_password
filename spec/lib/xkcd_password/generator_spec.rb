require 'spec_helper'
require './lib/xkcd_password'

describe XkcdPassword::Generator do

  let(:generator)       { XkcdPassword::Generator.new(word_list) }
  let(:words)           { %w( correct horse battery staple )}
  let(:expected_words)  { words.join(' ') }
  let(:word_list)       { double }

  before do
    # important this is a stub
    word_list.stub(:sample).and_return(*words)
  end

  it "outputs four random words from the word file to STDOUT" do
    generator.call.should == expected_words
  end

end

