###########
#  to run use:
#    ruby ./headphone.rb



$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'


headphone = Image.parse( <<TXT, colors: ['444444', 'CDCDCD'] )
. . . . x x x x x x x . . . .
. . . x . . . . . . . x . . .
. . x . . . . . . . . . x . .
. x . . . . . . . . . . . x .
. x . . . . . . . . . . . x .
. x . . . . . . . . . . . x .
. x . . . . . . . . . . . x .
. x @ . . . . . . . . . @ x .
. @ @ . . . . . . . . . @ @ .
x @ @ . . . . . . . . . @ @ x
. @ @ . . . . . . . . . @ @ .
. . @ . . . . . . . . . @ . .
TXT

headphone.save( './i/headphone.png' )
headphone.zoom(4).save( './i/headphone4x.png' )



designs = [
  'human-male!lighter',
  'human-male!light',
  'human-male!dark',
  'human-male!darker',
  'zombie-male',
  'ape-male',
  'alien-male',
 ]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter
  punk.save( "./i/design-#{name}.png" )
end


designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk[4,12] = 0   if design == 'alien-male'   ## quick hack/fix for alien ear

  punk.compose!( headphone, 4, 4 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/punk_headphone-#{name}.png" )
  punk.zoom(4).save( "./i/punk_headphone-#{name}x4.png" )
end


hair = Image.parse( <<TXT, colors: ['D0AA29'] )
. . @ @ @ @ @ @ @ . .
. @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @
@ @ @ . . @ @ @ . @ @
@ @ . . . . @ . . . @
@ . . . . . . . . . @
TXT

hair.save( './i/hair.png' )
hair.zoom(4).save( './i/hair4x.png' )




designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk[4,12] = 0   if design == 'alien-male'   ## quick hack/fix for alien ear

  punk.compose!( headphone, 4, 4 )
  punk.compose!( hair, 6, 5 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/punk_headphone_ii-#{name}.png" )
  punk.zoom(4).save( "./i/punk_headphone_ii-#{name}x4.png" )
end





####
# design variant - headphone + hair (all-in-one) combo

headphone_ii = Image.parse( <<TXT, colors: ['292B2E', 'A61121'] )
. . . . . @ @ @ @ @ . . . . .
. . . @ @ @ x x x x @ @ . . .
. . @ @ x x x x x x x x @ . .
. @ @ x x . . . . . . x x @ .
. @ x x . . . . . . . . x @ .
. @ x . . . . . . . . . x @ .
@ @ x x . . . . . . . . x @ @
@ @ @ x . . . . . . . . x x @
@ @ @ x . . . . . . . . x x @
@ @ @ x . . . . . . . . x x @
. @ @ . . . . . . . . . . @ .
TXT

headphone_ii.save( './i/headphone_ii.png' )
headphone_ii.zoom(4).save( './i/headphone_ii4x.png' )



designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( headphone_ii, 4, 4 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/punk_headphone_iii-#{name}.png" )
  punk.zoom(4).save( "./i/punk_headphone_iii-#{name}x4.png" )
end





puts "bye"
