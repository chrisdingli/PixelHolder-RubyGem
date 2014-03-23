Gem::Specification.new do |s|
  s.name        = 'pixelholder'
  s.version     = '2.0.0'
  s.date        = '2014-03-23'
  s.summary     = "A placeholder image generator"
  s.description = "A simple placeholder image generator"
  s.authors     = ["Christopher Dingli"]
  s.email       = 'cldingli@gmail.com'
  s.files       = [
    "lib/pixelholder.rb",
    "lib/modules/placeholder.rb",
    "lib/modules/fill.rb",
    "lib/modules/gradient.rb",
    "lib/modules/flickr.rb"
  ]
  s.homepage    = 'http://github.com/chrisdingli/pixelholder-rubygem'
  s.license     = 'MIT'
  s.add_dependency('flickraw', ">= 0.9.7")
  s.add_dependency('rmagick', ">= 2.13.2")
end
