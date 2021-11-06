###########
#  to run use:
#    ruby ./wallstreetbets.rb


require 'cryptopunks'


## lets try 4 original (+ humans in all four skin tones)
##   and 4 more designs (punk archetypes)
names = [
  'human-male_4',   ## formerly skin tone lighter
  'human-male_3',   ##   - " -   light
  'human-male_2',   ##   - " -   dark
  'human-male_1',   ##   - " -   darker
  'zombie-male',
  'ape-male',
  'alien-male',
  'demon-male',
  'vampire-male',
  'orc-male',
  'skeleton-male',
]


names.each do |name|
  punk = Punks::Sheet.find_by( name: name )

  punk.save( "./i/design-#{name}.png" )
  punk.zoom(4).save( "./i/design-#{name}@4x.png" )
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
hair.zoom(4).save( './i/hair@4x.png' )


shades = Image.parse( <<TXT, colors: ['000000'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ @ @ @ . . @ @ @ @
. . . @ @ . . . . @ @ .
TXT
puts "  shades (#{shades.width}x#{shades.height})"

shades.save( './i/shades.png' )
shades.zoom(4).save( './i/shades@4x.png' )




names.each do |name|
  punk = Punks::Sheet.find_by( name: name  )

  punk.compose!( hair,   3, 2  )
  punk.compose!( shades, 6, 11 )

  punk.save( "./i/wallstreetbets-#{name}.png" )
  punk.zoom(4).save( "./i/wallstreetbets-#{name}@4x.png" )
end


puts "bye"
