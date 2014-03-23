require "RMagick"

module PixelHolder

  class Placeholder

    attr_reader :canvas, :width, :height, :image_format

    def initialize(options = {})
        @options = options
        set_options
    end

    private

    def set_options
      @width = @options[:width].to_i || 800
      @height = @options[:height].to_i || 600
      @image_format = @options[:image_format] || "jpg"
    end

    def generate_canvas(fill = nil)
      background_color = @options[:background_color] || "#ffffff"
      image_format = @image_format

      unless fill.nil?
        @canvas = Magick::Image.new(@width, @height, fill) do
          self.background_color = background_color
          self.format = image_format
        end
      else
        @canvas = Magick::Image.new(@width, @height) do
          self.background_color = background_color
          self.format = image_format
        end
      end

      add_text_overlay  
    end

    def add_text_overlay
      if @options[:text] == "show_dimensions"
        overlay_text = "#{@width} #{215.chr} #{@height}"
      else
        overlay_text = @options[:text]
      end

      overlay = Magick::Draw.new

      overlay.fill = @options[:text_color] || '#ffffff'
      overlay.stroke = "rgba(0,0,0,0.15)"
      overlay.stroke_width = 20
      overlay.font_weight = Magick::BoldWeight
      overlay.pointsize = 500
      overlay.gravity = Magick::CenterGravity
      overlay.interline_spacing = -500

      font_size = overlay.get_type_metrics(overlay_text)

      overlay_canvas = Magick::Image.new(font_size.width, font_size.height) do
        self.background_color = 'transparent'
      end

      overlay.annotate(overlay_canvas, 0, 0, 0, 0, overlay_text)

      overlay_height = @height * 0.8

      overlay_canvas.resize_to_fit!(@width * 0.8, overlay_height)

      @canvas.composite!(overlay_canvas, Magick::CenterGravity, Magick::OverCompositeOp)
    end
  end
end
