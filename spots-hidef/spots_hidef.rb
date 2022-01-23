require 'pixelart'



ids = [88, 100, 180, 190]

ids.each do |id|
  punk = Image.read( "./i/punk-#{10000+id}.png" )

  punk_spots = punk.spots_hidef( 10 )
  punk_spots.save( "./i/punk-#{10000+id}_spots1.svg" )


  punk_spots = punk.spots_hidef( 5, spacing: 5,
                          center: [-1,1], radius: [3,6] )

  punk_spots.save( "./i/punk-#{10000+id}_spots3.svg" )


  punk_spots = punk.zoom( 2 ).spots_hidef( 5, spacing: 5,
                          center: [-1,1], radius: [3,6] )

  punk_spots.save( "./i/punk-#{10000+id}_spots3@2x.svg" )
end


puts "bye"
