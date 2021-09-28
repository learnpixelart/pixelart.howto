require 'pixelart'


BLACK = '000000'
WHITE = 'FFFFFF'


# 8x8 block - 3 colors:
#  @ - color 1 - skin tone,
#  x-  color 2 (darker)  - nose + "mouth shadow"
#  o-  color 3 (darkest) - mouth

face_design =<<TXT
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
@ @ @ x x @ @ @
@ @ @ @ @ @ @ @
@ @ @ o o @ @ @
@ @ @ x x @ @ @
TXT

## use numbers (1,2,3,4,5) instead of names - why? why not?
skin_tones = {
   lighter: ['F8CEB8', 'E8AF90', 'A06E63'],
   light:   ['E0A98B', 'DA8E63', '955144'],
   medium:  ['D1885F', 'D56E35', '913623'],
   dark:    ['A36140', 'A84D1C', '732412'],
   darker:  ['773D20', '7D2E03', '561202'],
}


skin_tones.each do |key,colors|
   face = Image.parse( face_design, colors: colors )

   face.save( "./i/face_#{key}.png")
   face.zoom(4).save( "./i/face_#{key}4x.png" )
end


eyes_small = Image.parse( <<TXT, colors: [BLACK, WHITE] )
x @ . . @ x
TXT
block = Image.new( 8, 8 )
block.compose!( eyes_small, 1, 3 )  ## note: add x-offset +1, y-offset +3
block.save( "./i/eyes_small.png")
block.zoom(4).save( "./i/eyes_small4x.png" )

eyes_large = Image.parse( <<TXT, colors: [BLACK, WHITE] )
x @ . . @ x
x @ . . @ x
TXT
block = Image.new( 8, 8 )
block.compose!( eyes_large, 1, 3 )  ## note: add x-offset +1, y-offset +3
block.save( "./i/eyes_large.png")
block.zoom(4).save( "./i/eyes_large4x.png" )


hair_styles = {
  regular: <<TXT,
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
@ . . . . . . @
TXT

  side_burns: <<TXT,
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
@ . . . . . . @
@ . . . . . . @
TXT

  bangs: <<TXT,
@ @ @ @ @ @ @ @
@ . . @ @ @ @ @
@ . . . @ @ @ @
TXT

  crew_cut: <<TXT,
@ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @
. @ @ @ @ @ @ .
TXT
}


hair_colors = {
  black:    BLACK,
  blonde:   'EDC58C',
  brunette: '472516',
  maroon:   '390404',
  ginger:   '91280C',
  red:      'E22626',
  purple:   '710CC7',
}


hair_colors.each do |hair_color_key,hair_color|
  hair_styles.each do |hair_style_key,hair_style_design|

    hair = Image.parse( hair_style_design, colors: [hair_color] )

    block = Image.new( 8, 8 )
    block.compose!( hair )
    block.save( "./i/hair_#{hair_style_key}-#{hair_color_key}.png")
    block.zoom(4).save( "./i/hair_#{hair_style_key}-#{hair_color_key}4x.png" )
  end
end



## all together
##  let's try putting together some blockheads


blockheads = [
  ## face (skin tone), eyes (small|large), hair style (+ color)
  ['darker',  'small',  'regular-blonde' ],
  ['light',   'small',  'bangs-red' ],
  ['medium',  'large',  'side_burns-purple' ],
  ['lighter', 'large',  'crew_cut-maroon' ]
]

blockheads.each_with_index do |attribs, i|
   face = "face_#{attribs[0]}"
   eyes = "eyes_#{attribs[1]}"
   hair = "hair_#{attribs[2]}"

   block = Image.read( "./i/#{face}.png" )
   block.compose!( Image.read( "./i/#{eyes}.png" ))
   block.compose!( Image.read( "./i/#{hair}.png" ))

   block.save( "./i/blockhead#{i}.png")
   block.zoom(4).save( "./i/blockhead#{i}x4.png" )
   block.zoom(8).save( "./i/blockhead#{i}x8.png" )
end




puts "bye"
