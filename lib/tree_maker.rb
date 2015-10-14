require_relative 'constants'
require_relative 'react_file_parser'
require 'pry'


files = Dir["../test_files/**/*.jsx"]

files.each do |file|
  #file_to_be_parsed = File.dirname(__FILE__) + "/../test_files/Board.jsx"
file_to_be_parsed = File.read(file)

ReactFileParser.new(file_to_be_parsed).parse_components

end

puts TREE
