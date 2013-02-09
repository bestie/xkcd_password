lib = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift(lib) if File.directory?(lib) && !$LOAD_PATH.include?(lib)

require "xkcd_password/version"
require "xkcd_password/dictionary"
require "xkcd_password/generator"
require "xkcd_password/cli"


module XkcdPassword
  def self.word_file
    File.expand_path(
      File.join( File.dirname(__FILE__), 'assets/common_words.txt' )
    )
  end
end

