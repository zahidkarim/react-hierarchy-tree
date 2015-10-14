class ComponentExtractor
  attr_accessor :components, :standard_tags

  def initialize(string_to_extract)
    @components = string_to_extract
    @standard_tags = STANDARD_HTML_TAGS
  end

  def extract
    components.each_line do |line|
     if line.gsub!(/\s+/, "")[0] == "<"
      if !check_if_in_standard_component(line)
        TREE << line
      end
     end
    end
  end

  private

  def check_if_in_standard_component(line)
    standard_tags.any? { |tag| line.include?(tag) }
  end
end
