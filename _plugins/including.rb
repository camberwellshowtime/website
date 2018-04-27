module Jekyll
  class IncludeMarkdown < Jekyll::Tags::IncludeTag
    def render(context)
      text = super
      arr = text.split(/^---$/)
      for_out = arr.size > 2 ? arr[2] : arr[0]
      site = context.registers[:site]
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)
      converter.convert(for_out)
    end
  end
end

Liquid::Template.register_tag('include_markdown', Jekyll::IncludeMarkdown)
