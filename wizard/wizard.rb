###########
#  to run use:
#    ruby ./wizard.rb



$LOAD_PATH.unshift( "../cryptopunks/lib" )
require 'cryptopunks'


wizard = Image.parse( <<TXT, colors: ['5F5297', '7966AB', '8B80B7', 'F1EA49'] )
 . . . . . . . x o o o . . . .
 . . . . . . @ x x x x o . . .
 . . . . . @ @ x x ^ x x o . .
 . . . . @ @ x x x x x @ @ @ .
 . . . . @ x ^ x x x @ . . @ @
 . . . @ @ x x x x x @ @ . . @
 . . . @ x x x x x ^ x @ . . .
 . . @ @ @ @ @ @ @ @ @ @ @ . .
 . @ x x x x x x x x x x x @ .
 @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT

wizard.save( './i/wizard.png' )
wizard.zoom(4).save( './i/wizard4x.png' )



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

  punk.compose!( wizard, 4, 0 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "./i/punk_wizard-#{name}.png" )
  punk.zoom(4).save( "./i/punk_wizard-#{name}x4.png" )
end


puts "bye"
