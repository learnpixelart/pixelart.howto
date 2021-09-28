###########
#  to run use:
#    ruby ./wallstreetbets.rb


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


hair = Image.parse( <<TXT, colors: ['000000', 'E8BC0D'] )
. . . . @ @ @ @ @ @ @ @ @ @
. . . . x x x x x x x x x @
. . . @ @ @ @ @ @ @ @ @ x @
. . x x x x x x x x x @ x @
. @ @ @ @ @ @ @ @ @ x @ x @
. x x x x x x x x @ x @ x @
. @ @ @ @ @ . . . . . . x @
x x x x x . . . . . . . . .
@ @ @ @ . . . . . . . . . .
. x x . . . . . . . . . . .
. @ @ . . . . . . . . . . .
TXT
puts "  hair (#{hair.width}x#{hair.height})"

hair.save( './i/hair.png' )
hair.zoom(4).save( './i/hairx4.png' )


shades = Image.parse( <<TXT, colors: ['000000'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ @ @ @ . . @ @ @ @
. . . @ @ . . . . @ @ .
TXT
puts "  shades (#{shades.width}x#{shades.height})"

shades.save( './i/shades.png' )
shades.zoom(4).save( './i/shadesx4.png' )




designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair,   3, 2  )
  punk.compose!( shades, 6, 11 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/wallstreetbets-#{name}.png" )
  punk.zoom(4).save( "./i/wallstreetbets-#{name}x4.png" )
end


puts "bye"