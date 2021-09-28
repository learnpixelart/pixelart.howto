###########
#  to run use:
#    ruby ./caps.rb


$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'


#####
# cap pixel art design - 14x5, 2 colors
#
#  51 pixel - #8119b7 / rgb(129  25 183) - hsl(279°  76%  41%)
#   2 pixel - #b261dc / rgb(178  97 220) - hsl(280°  64%  62%)

cap_design = <<TXT
. . @ @ @ @ @ @ @ . . . . .
. @ @ @ @ @ @ x @ @ . . . .
@ @ @ @ @ @ @ @ x @ . . . .
@ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT


cap = Image.parse( cap_design, colors: ['8119b7', 'b261dc'] )

cap.save( './i/cap.png' )
cap.zoom(4).save( './i/capx4.png' )




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
  'vampire-male',
  'orc-male',
  'skeleton-male',
  'mummy-male',
]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter
  punk.save( "./i/design-#{name}.png" )
  punk.zoom(4).save( "./i/design-#{name}x4.png" )
end



hues = [279,    ## orginal (violet) hue
        0,      ## red
        30,     ## orange
        90,     ## chartreuse
        120,    ## green
        240,    ## blue
        300,    ## magenta
        330,    ## fuchsia
        ]
hues.each do |hue|
  cap  = Image.parse( cap_design, colors: [[hue,         0.76, 0.41],
                                           [(hue+1)%360, 0.64 ,0.62]] )

  designs.each do |design|
     punk = Punks::Image.new( design: design )

     head_x, head_y = [6, 4]  ## head offset - x/y start positions
     punk.compose!( cap, head_x, head_y )

     name = ''
     name << design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter
     name << '_'
     name << '%03d' % hue

     punk.save( "./i/#{name}.png" )
     punk.zoom(4).save( "./i/#{name}x4.png" )
  end
end





puts "bye"