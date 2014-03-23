module PixelHolder
  class Fill < PixelHolder::Placeholder
    def initialize(options = {})
      super
      generate_canvas
    end
  end
end
