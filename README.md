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
Create a red 300x500 rectangle
```
pixelholder = PixelHolder.new('color:f00', '300x500')
pixelholder.get_blob()
```
Create a 300x500 picture of a cat
```
pixelholder = PixelHolder.new('cat', '300x500')
pixelholder.get_blob()
```
You can also insert an optional path to your flickr_fu config file if it is not found at `./config/flickr.yml`
```
pixelholder = PixelHolder.new('cat', '300x500', 'config/flickr_2.yml')
pixelholder.get_blob()
```
A hash of options can be inserted to add things like text overlays. Setting the config path to nil will load the default file `config/flickr.yml`
```
pixelholder_options = Hash.new(false)
pixelholder_options[:text] = 'Hello!'
pixelholder = PixelHolder.new('color:f00', '300x500', nil, pixelholder_options)
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
