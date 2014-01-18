Gem::Specification.new do |s|
  s.name        = 'pixelholder'
  s.version     = '1.2.3'
  s.date        = '2014-01-18'
  s.summary     = "A placeholder image generator"
  s.description = "A simple placeholder image generator"
  s.authors     = ["Christopher Dingli"]
  s.email       = 'cldingli@gmail.com'
  s.files       = ["lib/pixelholder.rb"]
  s.homepage    = 'http://github.com/chrisdingli/pixelholder-rubygem'
  s.license     = 'MIT'
  s.add_dependency('flickr_fu', ">= 0.3.2")
  s.add_dependency('rmagick', ">= 2.13.2")
end