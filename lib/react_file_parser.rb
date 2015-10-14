require_relative 'constants'
require_relative 'component_extractor'
require_relative 'string_extractor'
require 'nokogiri'
require 'pry'

class ReactFileParser
  attr_reader :file, :standard_tags, :parser

  def initialize(file)
    @file = file
  end

  def parse_components
    ComponentExtractor.new(extract_return_html).extract if inculde_render_method?
  end

  private

  def inculde_render_method?
    file.include?("render()")
  end

  def extract_return_html
    render = StringExtractor.extract(file, "render()")
    returned = StringExtractor.extract(render, "return")
    start_of_html = StringExtractor.extract(returned, "<div")
    StringExtractor.extract(start_of_html.reverse, ">vid").reverse
  end
end
