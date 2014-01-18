PixelHolder-RubyGem
===================

The PixelHolder RubyGem - A standalone RubyGem for creating image placeholders.

Installation
---
```
gem install pixelholder
```

Usage
---
```
pixelholder_options = Hash.new(false)
pixelholder = PixelHolder.new('color:f00', '300x500', pixelholder_options)
pixelholder.get_blob()
```

Options
---
```
pixelholder_options = {
  :seed => integer # Works only with images. Picks another image
  :text => string # Changes the overlay text to whatever string you wish to use. For spaces, use %20 in the URL
  :text => 'add_dimensions' # Similar to adding text, this will add the dimensions of the image as an overlay
  :text_color => {hex color code} # e.g. cc9900 - Changes the overlay text color. Do not use a hash (#) symbol
}
```
