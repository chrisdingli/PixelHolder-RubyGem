class PixelHolder::Fill < PixelHolder::Base
  def initialize(options = {})
    super
    generate_canvas
  end
end
