class PixelHolder::Gradient < PixelHolder::Base

  private

  def set_options
    super
    add_gradient
  end

  def add_gradient
    direction = @options[:direction] || "vertical"
    start_color = @options[:start_color] || "#ffffff"
    end_color = @options[:end_color] || "#0099cc"

    end_x = if direction == "vertical" then @width else 0 end
    end_y = if direction == "vertical" then 0 else @height end

    fill = Magick::GradientFill.new(0, 0, end_x, end_y, start_color, end_color)

    generate_canvas(fill)
  end
end
