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



ids = [88, 100, 180, 190]

ids.each do |id|
  punk = Image.read( "./i/punk-#{10000+id}.png" )

  punk_spots = punk.zoom(2).spots( 5, spacing: 5,
                             center: [-1,1], radius: [3,6],
                             background: BACKGROUND_SPOTS )

  punk_spots.save( "./i/punk-#{10000+id}-currency-v1@2x.png" )


  punk_spots = punk.zoom(2).spots( 5, spacing: 5,
                             center: [-3,3], radius: [2,8],
                             background: BACKGROUND_SPOTS )

  punk_spots.save( "./i/punk-#{10000+id}-currency-v2@2x.png" )


  punk_spots = punk.zoom(2).spots_hidef( 5, spacing: 5,
                              center: [-3,3], radius: [2,8],
                              background: BACKGROUND_SPOTS )

  punk_spots.save( "./i/punk-#{10000+id}-currency-v2@2x.svg" )
end


puts "bye"
