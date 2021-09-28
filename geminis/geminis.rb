####################
# to run use:
#     ruby ./geminis.rb



require 'cryptopunks'


punks = Punks::Image::Composite.read( '../../programming-cryptopunks/punks.png' )


ids      = [0, 2964, 3100, 3393]
offset_x = 14


ids.each do |id|
  name = "%04d" % id

  punk = punks[id]

  punk.save( "./i/punk-#{name}.png" )

  gemini = Image.new( 24+offset_x, 24 )
  gemini.compose!( punk, 0, 0 )
  gemini.compose!( punk, offset_x, 0 )
  gemini.save( "./i/gemini-#{name}.png" )
  gemini.zoom(4).save( "./i/gemini-#{name}x4.png" )
end


ids.each do |id|
  name = "%04d" % id

  punk = punks[id]

  triplet = Image.new( 24+offset_x*2, 24 )
  triplet.compose!( punk, 0, 0 )
  triplet.compose!( punk, offset_x, 0 )
  triplet.compose!( punk, offset_x*2, 0 )

  triplet.save( "./i/triplet-#{name}.png" )
  triplet.zoom(4).save( "./i/triplet-#{name}x4.png" )
end


ids.each do |id|
  name = "%04d" % id

  punk = punks[id]

  sextuplet = Image.new( 24+offset_x*5, 24 )
  sextuplet.compose!( punk, 0, 0 )
  sextuplet.compose!( punk, offset_x, 0 )
  sextuplet.compose!( punk, offset_x*2, 0 )
  ## flip horizonatally (mirror) the next three
  sextuplet.compose!( punk.mirror, offset_x*3, 0 )
  sextuplet.compose!( punk.mirror, offset_x*4, 0 )
  sextuplet.compose!( punk.mirror, offset_x*5, 0 )

  sextuplet.save( "./i/sextuplet-#{name}.png" )
  sextuplet.zoom(4).save( "./i/sextuplet-#{name}x4.png" )
end


puts "bye"

