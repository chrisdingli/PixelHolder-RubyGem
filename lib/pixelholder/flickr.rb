require 'flickraw'
require 'open-uri'

class PixelHolder::Flickr < PixelHolder::Base

  private

  def set_options
    super
    add_photo
  end

  def add_photo
    seed = if @options[:seed] then @options[:seed].to_i else 0 end

    FlickRaw.api_key = @options[:flickr_key]
    FlickRaw.shared_secret = @options[:flickr_secret]

    photos = flickr.photos.search(
      tags: @options[:flickr_tags],
      tag_mode: 'all'
    )

    photo_id = photos[seed].id
    photo_sizes = flickr.photos.getSizes(photo_id: photo_id)

    # Get the largest image
    photo_original_url = photo_sizes[-1].source

    unless photo_original_url.nil?
      image_background = Magick::ImageList.new
      image_url = open(photo_original_url)
      image_format = @image_format

      image_background.from_blob(image_url.read) do
        self.format = image_format
        self.quality = 100
      end

      image_background.resize_to_fill!(@width, @height)

      generate_canvas

      @canvas.composite!(image_background, Magick::CenterGravity, Magick::CopyCompositeOp)
    end

    if @options[:text]
      add_text_overlay
    end
  end

end
