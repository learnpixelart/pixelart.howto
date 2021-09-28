#####
#  to run use
#    $ ruby ./sketches.rb


require 'pixelart'




punk = Pixelart::Image.read( './i/punk-3100.png' )
punk_sketch = punk.sketch( 4 )
punk_sketch.save( './i/punk-3100_sketch4x.png' )
punk_sketch = punk.sketch( 4, line: 4 )
punk_sketch.save( './i/punk-3100_sketch4x4.png' )
punk_sketch = punk.sketch( 8, line: 2 )
punk_sketch.save( './i/punk-3100_sketch8x2.png' )
punk_sketch = punk.sketch( 12, line: 3 )
punk_sketch.save( './i/punk-3100_sketch12x3.png' )


ids = [
 3393,   # zombie
 172,    # blondie
 2964,   # beanie
]
ids.each do |id|
  name = '%04d' % id
  punk = Pixelart::Image.read( "./i/punk-#{name}.png" )

  punk_sketch = punk.sketch( 4 )
  punk_sketch.save( "./i/punk-#{name}_sketch4x.png" )
  punk_sketch = punk.sketch( 4, line: 4 )
  punk_sketch.save( "./i/punk-#{name}_sketch4x4.png" )
  punk_sketch = punk.sketch( 8, line: 2 )
  punk_sketch.save( "./i/punk-#{name}_sketch8x2.png" )
  punk_sketch = punk.sketch( 12, line: 3 )
  punk_sketch.save( "./i/punk-#{name}_sketch12x3.png" )
end


puts "bye"


