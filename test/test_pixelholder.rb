require 'test/unit'
require 'pixelholder'

class PixelHolderTest < Test::Unit::TestCase

  def setup
    options = Hash.new(false)
    @pixelholder = PixelHolder.new('color:000', '300', options)
  end

  def teardown
    #
  end

  def test_generate_color
    assert_equal "ff0000",
      @pixelholder.generate_color("f00")
    assert_equal "ff0000",  
      @pixelholder.generate_color("ff00")
    assert_equal "ff0000",    
      @pixelholder.generate_color("ff000")
    assert_equal "ff0000",  
      @pixelholder.generate_color("ff00000")
    assert_equal "f0f0f0",
      @pixelholder.generate_color("f0")
    assert_equal "ffffff",
      @pixelholder.generate_color("f")
    assert_equal "FFFFFF",
      @pixelholder.generate_color("F")
  end 

  def test_get_hex
    assert_equal '#d3d3d3', 
      @pixelholder.get_hex('d3d3d3')
    assert_equal '#f3f3f3', 
      @pixelholder.get_hex('f3f3f3987456')
    assert_equal '#ffff00', 
      @pixelholder.get_hex('ffff')
    assert_equal '#ff33dd', 
      @pixelholder.get_hex('f3d')
    assert_equal '#f3f3f3', 
      @pixelholder.get_hex('f3')
    assert_equal '#ffffff', 
      @pixelholder.get_hex('f')
    assert_equal '#ffffff', 
      @pixelholder.get_hex('F')
  end

  def test_is_numeric
    assert_equal true, 
      @pixelholder.is_numeric('300')
    assert_equal false,  
      @pixelholder.is_numeric('300x400')
    assert_equal false,  
      @pixelholder.is_numeric('xxx')
  end

end