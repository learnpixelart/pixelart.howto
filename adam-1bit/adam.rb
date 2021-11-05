###
#  to run use:
#     ruby ./adam.rb


require 'pixelart'


###
#  step 1 - generate 24x24 attributes from 1-bit (black & white) pixel art (in ascii text format)

colors = {
  '.' => 0,           # transparent
  '0' => 'ffffff',    # color 0 - white
  '1' => '000000',    # color 1 - black
}


img = Image.parse( <<TXT, colors: colors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . 1 1 1 1 1 1 1 . . . . . . . . .
. . . . . . . 1 0 0 0 0 0 0 0 1 . . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 1 1 0 0 0 1 1 1 . . . . . . .
. . . . . 1 0 0 0 1 0 0 0 0 1 0 1 . . . . . . .
. . . . . 1 0 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . 1 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 1 1 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 1 1 1 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 1 . . . . . . . .
. . . . . . 1 0 0 0 1 1 1 1 1 . . . . . . . . .
. . . . . . 1 0 0 0 1 . . . . . . . . . . . . .
. . . . . . 1 0 0 0 1 . . . . . . . . . . . . .
TXT
img.save( "./i/attributes/face.png" )
img.zoom(4).save( "./i/attributes/face@4x.png" )


hair = Image.parse( <<TXT, colors: colors )
. . . . . 1 . . . . 1 . . . . . . .
. . . . 1 1 1 1 1 1 1 1 1 1 1 . . .
. . . . 1 1 1 1 1 1 1 1 1 1 1 1 . .
. . 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 .
1 . . 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 .
. . 1 1 1 1 1 1 . . 1 . 1 . 1 . . .
. . 1 1 . . 1 . . . . . . . . . . .
. 1 1 1 . . . . . . . . . . . . . .
. 1 1 . . . . . . . . . . . . . . .
. . 1 . . . . . . . . . . . . . . .
. . 1 . . . . . . . . . . . . . . .
. 1 . . . . . . . . . . . . . . . .
TXT
img = Image.new( 24, 24 )
img.compose!( hair, 2, 2 )   # place in 24x24 canvas (image) with x/y offset
img.save( "./i/attributes/hair.png")
img.zoom(4).save( "./i/attributes/hair@4x.png")


lasereyes = Image.parse( <<TXT, colors: colors )
. . . . 1 . . . . . 1 . . . .
. . . . 1 . . . . . 1 . . . .
. . . 1 1 1 . . . 1 1 1 . . .
1 1 1 1 0 1 1 . 1 1 0 1 1 1 1
. . . 1 1 1 . . . 1 1 1 . . .
. . . . 1 . . . . . 1 . . . .
. . . . 1 . . . . . 1 . . . .
TXT
img = Image.new( 24, 24 )
img.compose!( lasereyes, 5, 8 )   # place in 24x24 canvas (image) with x/y offset
img.save( "./i/attributes/lasereyes.png")
img.zoom(4).save( "./i/attributes/lasereyes@4x.png")





###
#  step 2 - all-together now - generate 24x24 pixel punk from attributes

punk = Image.new( 24, 24 )   # canvas (image) with transparent background color
punk.compose!( Image.read( "i/attributes/face.png" ))
punk.compose!( Image.read( "i/attributes/hair.png" ))
punk.compose!( Image.read( "i/attributes/lasereyes.png" ))

punk.save( "./i/adam.png" )
punk.zoom(4).save( "i/adam@4x.png")
punk.zoom(8).save( "i/adam@8x.png")

punk.mirror.save( "./i/adam_left.png" )
punk.mirror.zoom(4).save( "i/adam_left@4x.png")
punk.mirror.zoom(8).save( "i/adam_left@8x.png")

punk.flip.save( "./i/adam_flipped.png" )  ## flip horizontally
punk.flip.zoom(4).save( "i/adam_flipped@4x.png")
punk.flip.zoom(8).save( "i/adam_flipped@8x.png")


puts "bye"


