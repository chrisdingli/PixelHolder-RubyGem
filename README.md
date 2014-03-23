# PixelHolder-RubyGem

The PixelHolder RubyGem - A RubyGem for creating image placeholders.

## Installation

```
gem install pixelholder
```

## Usage

Flickr Images:
```
image = PixelHolder::Flickr.new(options = {})
```

Gradient:
```
image = PixelHolder::Gradient.new(options = {})
```

Solid Fill:
```
image = PixelHolder::Fill(options = {})
```

The PixelHolder classes have an accessible canvas variable (our generated image). To get the image as a blob:
```
blob = image.canvas.to_blob
```

### Options
```
options = {
  width: 600,
  height: 300,
  text: "whatever you want to go here can go here!", # Your overlay text. Set to "show_dimensions" to show image dimensions
  text_color: "#ffffff", # Color for overlay text
  image_format: "jpg", # Image format - jpg, png etc.

  # Fill only
  background_color: "#0099cc", # Six character hex color code

  # Gradient only
  direction: "horizontal", # Horizontal or vertical gradient. Default vertical.
  start_color: "#ffffff", # Six character hex color code
  end_color: "#0099cc", # Six character hex color code

  # Flickr Only
  flickr_tags: "cat,dog", # Comma separated tags.
  flickr_key: "<your flickr key>",
  flickr_secret: "<your flickr secret>",
  seed: 4 # Integer to select a different image result from Flickr
}
```
