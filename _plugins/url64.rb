require "base64"
require "sass"

module Sass::Script::Functions
  def url64(image)
    assert_type image, :String

    fullpath = File.realpath image.value
    ext = File.extname(fullpath)

    file = File.open(fullpath, "rb")
    text = file.read
    file.close
    text_b64 = Base64.encode64(text).gsub(/\r/,"").gsub(/\n/,"")
    contents = "url(data:image/#{ext[1,ext.length-1]};base64,#{text_b64})"

    Sass::Script::String.new(contents)

  end
  declare :url64, :args => [:string]
end
