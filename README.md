PixelHolder-RubyGem
===================

The PixelHolder RubyGem - A standalone RubyGem for creating image placeholders.

Installation
---
```
gem install pixelholder
```

Requirements
---
* Ruby 2.0.0
* Imagick
* [flickr_fu](https://rubygems.org/gems/flickr_fu) Flickr library
* [RMagick](https://rubygems.org/gems/rmagick) image manipulation library

Usage
---
```
pixelholder = PixelHolder.new('color:f00', '300x500','config/flickr.yml')
pixelholder.get_blob()
```

Please see [the PixelHolder-Sinatra project](https://github.com/chrisdingli/PixelHolder-Sinatra) for a sample implementation.

Options
---
```
pixelholder_options = {
  :seed => integer # Works only with images. Picks another image
  :text => string # Changes the overlay text to whatever string you wish to use
  :text => 'add_dimensions' # Similar to adding text, this will add the dimensions of the image as an overlay
  :text_color => {hex color code} # e.g. cc9900 - Changes the overlay text color. Do not use a hash (#) symbol
}
```
