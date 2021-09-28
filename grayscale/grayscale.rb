###
#  to run use:
#     ruby ./grayscale.rb



require 'cryptopunks'


print "==> loading image..."
punks = Punks::Image::Composite.read( '../../programming-cryptopunks/punks.png' )
print "OK\n"


## change all 10 000 punks to grayscale
punks_grayscale = punks.grayscale
punks_grayscale.save( "i/punks_grayscale.png" )


## reload as a composite image (with easy tile access via [])
punks_grayscale =  Punks::Image::Composite.read( 'i/punks_grayscale.png' )


punks_grayscale[2243].save( 'i/punk2243_grayscale.png' )



## let's have a looksie at the first five grayscale punks
(0..5).each do |id|
  punk = punks_grayscale[id]

  punk.save( "i/punk#{id}_grayscale.png" )
  punk.zoom(8).save( "i/punk#{id}_grayscalex8.png" )
end


#######
## bonus
##   create a 10x10 preview composite
punks_grayscale_preview = ImageComposite.new( 10, 10 )
(0..99).each do |id|
   punk = punks_grayscale[id]
   punks_grayscale_preview << punk
end

punks_grayscale_preview.save( "i/punks_grayscale_preview.png" )



## Let's try another round with ye olde' sepia vintage colors


## change all 10 000 punks to sepia
punks_sepia = punks.change_palette8bit( Palette8bit::SEPIA )
punks_sepia.save( "i/punks_sepia.png" )

## reload as a composite image (with easy tile access via [])
punks_sepia = Punks::Image::Composite.read( 'i/punks_sepia.png' )


## let's have a looksie at the first five sepia punks
(0..5).each do |id|
  punk = punks_sepia[id]

  punk.save( "i/punk#{id}_sepia.png" )
  punk.zoom(8).save( "i/punk#{id}_sepiax8.png" )
end


#######
## bonus
##   create a 10x10 preview composite
punks_sepia_preview = ImageComposite.new( 10, 10 )
(0..99).each do |id|
   punk = punks_sepia[id]
   punks_sepia_preview << punk
end

punks_sepia_preview.save( "i/punks_sepia_preview.png" )





puts "bye"



