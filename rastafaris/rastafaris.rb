###########
#  to run use:
#    ruby ./rastafaris.rb


$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'


## lets try 4 original (+ humans in all four skin tones)
##   and 4 more designs (punk archetypes)
designs = [
  'human-male!lighter',
  'human-male!light',
  'human-male!dark',
  'human-male!darker',
  'zombie-male',
  'ape-male',
  'alien-male',
  'demon-male',
  'vampire-male',
  'orc-male',
  'skeleton-male',
]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter
  punk.save( "./i/design-#{name}.png" )
  punk.zoom(4).save( "./i/design-#{name}x4.png" )
end


hair = Image.read( './i/rastafari-hair.png' )

puts "  hair (#{hair.width}x#{hair.height})"

# hair.zoom(4).save( './i/rastafari-hairx4.png' )


designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/rastafari-#{name}.png" )
  punk.zoom(4).save( "./i/rastafari-#{name}x4.png" )
end


regularshades = Image.read( './i/regularshades.png' )

## with regular shades
designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )
  punk.compose!( regularshades )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/rastafari-#{name}_ii.png" )
  punk.zoom(4).save( "./i/rastafari-#{name}_iix4.png" )
end



pipe          = Image.read( './i/pipe.png' )

## with regular shades + pipe
designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )
  punk.compose!( regularshades )
  punk.compose!( pipe )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/rastafari-#{name}_iii.png" )
  punk.zoom(4).save( "./i/rastafari-#{name}_iiix4.png" )
end


_3dglasses = Image.read( './i/3dglasses.png' )
## with 3d glasses

designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )
  punk.compose!( _3dglasses )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/rastafari-#{name}_iiii.png" )
  punk.zoom(4).save( "./i/rastafari-#{name}_iiiix4.png" )
end



puts "bye"