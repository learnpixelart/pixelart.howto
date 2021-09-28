require 'pixelart'


BACKGROUND_SPOTS = [
 # blue-ish
 '49355E', '16437A', '096598', '4B8BBB', '9CD9DE', 'C5A7C6',
 # red-ish
 'A5282C', 'D14C37', 'CF6A71', 'DD5E36', 'DDA315', 'F3A925',
 # green-ish
 '4C7031', '95A025', '66BA8C', '316D5F',
 # gray-ish /white-ish
 'C2B6AF', 'BFC0C5', '3BC8B5',
]


## todo/fix: add "generic" Composite.read helper to pixelart upstream!!!!
path = "../../awesome-24px/collection/boredapes_au.png"
img = ChunkyPNG::Image.from_file( path )
apes = ImageComposite.new( img, width: 28, height: 28 )



ids = [3, 8, 27, 30]

ids.each do |id|
  ape = apes[id]

  ape.save( "./i/boredape_au-#{id}.png" )
  ape.zoom(4).save( "./i/boredape_au-#{id}@4x.png" )


  ape_spots = ape.spots( 10 )
  ape_spots.save( "./i/boredape_au-#{id}-spots-v1.png" )

  ape_spots = ape.spots( 5, spacing: 5, center: [-1,1], radius: [3,6] )
  ape_spots.save( "./i/boredape_au-#{id}-spots-v2.png" )



  ape_spots = ape.zoom(2).spots( 5, spacing: 5,
                             center: [-1,1], radius: [3,6],
                             background: BACKGROUND_SPOTS )

  ape_spots.save( "./i/boredape_au-#{id}-currency-v1@2x.png" )


  ape_spots = ape.zoom(2).spots( 5, spacing: 5,
                             center: [-3,3], radius: [2,8],
                             background: BACKGROUND_SPOTS )

  ape_spots.save( "./i/boredape_au-#{id}-currency-v2@2x.png" )


  ape_spots = ape.zoom(2).spots_hidef( 5, spacing: 5,
                              center: [-3,3], radius: [2,8],
                              background: BACKGROUND_SPOTS )

  ape_spots.save( "./i/boredape_au-#{id}-currency-v2@2x.svg" )
end


puts "bye"
