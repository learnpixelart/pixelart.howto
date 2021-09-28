###########
#  to run use:
#    ruby ./coolpunks.rb


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



shades1 = Image.parse( <<TXT, colors: ['000000'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ @ @ @ . . @ @ @ @
. . . @ @ . . . . @ @ .
TXT
puts "  shades1 (#{shades1.width}x#{shades1.height})"

shades1.save( './i/shades1.png' )
shades1.zoom(4).save( './i/shades1x4.png' )



shades2 = Image.parse( <<TXT, colors: ['000000', '690C45', '8C0D5B', 'AD2160'] )
. @ @ @ @ @ . @ @ @ @ @
. @ x x x @ @ @ x x x @
@ @ o o o @ . @ o o o @
. @ ^ ^ ^ @ . @ ^ ^ ^ @
. . @ @ @ . . . @ @ @ .
TXT
puts "  shades2 (#{shades2.width}x#{shades2.height})"

shades2.save( './i/shades2.png' )
shades2.zoom(4).save( './i/shades2x4.png' )




shades3 = Image.parse( <<TXT, colors: ['000000', '000766', '0010e6'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ x x @ . @ x x @ .
. . @ o o @ . @ o o @ .
. . . @ @ . . . @ @ . .
TXT
puts "  shades3 (#{shades3.width}x#{shades3.height})"

shades3.save( './i/shades3.png' )
shades3.zoom(4).save( './i/shades3x4.png' )




head_offset =  [6, 11]

head_shades = [
  { image: shades1, offset: [0,0] },   # (12x3)
  { image: shades2, offset: [0,-1] },  # (12x5)
  { image: shades3, offset: [0,0] },   # (12x4)
]


head_shades.each_with_index.each do |shades, i|
   designs.each do |design|

     punk = Punks::Image.new( design: design )

     head_x,   head_y   = head_offset
     offset_x, offset_y = shades[:offset]

     punk.compose!( shades[:image], head_x+offset_x,
                                    head_y+offset_y )

     name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

     punk.save( "./i/coolpunk-#{name}_#{i+1}.png" )
     punk.zoom(4).save( "./i/coolpunk-#{name}_#{i+1}x4.png" )
  end
end


puts "bye"