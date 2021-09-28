#####
#  to run use
#    $ ruby ./neon.rb


$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'



module Pixelart

class Image

  ## neon glow special effect
  def neon( color='00ffaa' )
    ## note: must convert to black & white sketch
    sketch = sketch( 1 )

    inverse1 = sketch.change_colors( {
              'ffffff' => 0,  ## white to transparent
              '000000' => 'ffffff',  ## black to white
            })

    inverse2 = sketch.change_colors( {
               'ffffff' => 0,  ## white to transparent
               '000000' => color,  ## black to green
             })

####
# inspired by
#   https://css-tricks.com/how-to-create-neon-text-with-css/
#
# .neonText {
#    color: #fff;
#    text-shadow:
#      // white glow
#       0 0 7px #fff,
#       0 0 10px #fff,
#       0 0 21px #fff,
#      // green glow
#       0 0 42px #0fa,
#       0 0 82px #0fa,
#       0 0 92px #0fa,
#       0 0 102px #0fa,
#       0 0 151px #0fa;

    base = Image.new( sketch.width, sketch.height, Color::BLACK )
    base.compose!( inverse2.blur( 21 ) )  # -blur 21x21
    base.compose!( inverse2.blur( 10 ) )  # -blur 10x10
    base.compose!( inverse2.blur( 7 ) )   # -blur 7x7

    base.compose!( inverse1.blur( 2 ) )   # -blur 2x2
    base.compose!( inverse1 )
    base
  end
end # class Image
end # module Pixelart





##############
# let's go


path = "../../programming-cryptopunks/punks.png"
PUNKS = Punks::Image::Composite.read( path )


def generate( color )
  img = ImageComposite.new( 10, 10,
                            width: 49, height: 49 )
  (0..99).each do |id|
    punk = PUNKS[id]
    puts "==> punk #{id}"

    punk_neon = punk.neon( color )
    img << punk_neon
  end
  img
end




COLORS = {
  'green' => '00ff00',
  'blue'  => '0000ff',
  'red'   => 'ff0000',
}

COLORS.each do |color_name, color_hex|
  img = generate( color_hex )
  img.save( "./i/neonpunks_#{color_name}.png" )
end


puts "bye"


