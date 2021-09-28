#####
#  to run use
#    $ ruby ./led.rb


require 'pixelart'


color_map = {
  0xff => 0x242124ff,  # use raisin black for black; black already in use for background
}

punk = Pixelart::Image.read( './i/punk-3100.png' )
punk = punk.change_colors( color_map )


punk_led = punk.led( 8, spacing: 2 )
punk_led.save( './i/punk-3100_led8x.png' )

punk_led = punk.led( 16, spacing: 3 )
punk_led.save( './i/punk-3100_led16x.png' )

punk_led = punk.led( 16, spacing: 8, round_corner: true )
punk_led.save( './i/punk-3100_led16xr.png' )



ids = [
 3393,   # zombie
 172,    # blondie
 2964,   # beanie
]
ids.each do |id|
  name = '%04d' % id
  punk = Pixelart::Image.read( "./i/punk-#{name}.png" )
  punk = punk.change_colors( color_map )

  punk_led = punk.led( 8, spacing: 2 )
  punk_led.save( "./i/punk-#{name}_led8x.png" )

  punk_led = punk.led( 16, spacing: 3 )
  punk_led.save( "./i/punk-#{name}_led16x.png" )

  punk_led = punk.led( 16, spacing: 8, round_corner: true )
  punk_led.save( "./i/punk-#{name}_led16xr.png" )
end


puts "bye"

