###########
#  to run use:
#    ruby ./arabs.rb


$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'


## lets try 4 original (+ humans in all four skin tones)
designs = [
  'human-female!lighter',
  'human-female!light',
  'human-female!dark',
  'human-female!darker',
  'zombie-female',
  'ape-female',
  'alien-female',
]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter
  punk.save( "./i/design-#{name}.png" )
end


hair = Image.read( './i/arab-hair.png' )

puts "  hair (#{hair.width}x#{hair.height})"

# hair.zoom(4).save( './i/arab-hairx4.png' )


designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/arab-#{name}.png" )
  punk.zoom(4).save( "./i/arab-#{name}x4.png" )
end


regularshades = Image.parse( <<TXT, colors: ['000000'] )
 @ @ @ @ @ @ @ @ @ @ @
 . . @ @ @ @ . @ @ @ @
 . . . @ @ . . . @ @ .
TXT

regularshades.save( 'i/regularshades.png' )


## with regular shades
designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )
  punk.compose!( regularshades, 6, 11)

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/arab-#{name}_ii.png" )
  punk.zoom(4).save( "./i/arab-#{name}_iix4.png" )
end



_3dglasses = Image.parse( <<TXT, colors: ['328DFD', 'FD3232', 'F0F0F0'] )
o o o o o o o o o o
o o @ @ @ o x x x o
. o @ @ @ o x x x o
. o o o o o o o o o
TXT

_3dglasses.save( 'i/3dglasses.png' )


## with 3d glasses

designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )
  punk.compose!( _3dglasses, 7, 11 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/arab-#{name}_iii.png" )
  punk.zoom(4).save( "./i/arab-#{name}_iiix4.png" )
end



puts "bye"