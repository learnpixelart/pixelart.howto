###
#  to run use:
#     ruby ./aliens.rb



require 'cryptopunks'


print "==> loading image..."
punks = Punks::Image::Composite.read( '../../programming-cryptopunks/punks.png' )
print "OK\n"



## collections of all aliens
aliens = []

# 9 aliens (male) in original series
ids_original = [635, 2890, 3100, 3443, 5822, 5905, 6089, 7523, 7804]
ids_original.each do |id|
  punk = punks[id]
  aliens << punk
end



print "==> loading image..."
punks = Punks::Image::Composite.read( '../../programming-cryptopunks/i/morepunks.png' )
print "OK\n"

# 21 aliens (male/female) in more series
ids_more = [
0, 100, 210, 300, 399, 440, 500, 599, 640, 700, 719, 790,
810, 869, 900, 959, 971, 977, 982, 986, 993]

puts " #{ids_more.size} id(s) more"
ids_more.each do |id|
  punk = punks[id]
  aliens << punk
end



print "==> loading image..."
punks = Punks::Image::Composite.read( '../../programming-cryptopunks/i/expansionpunks.png' )
print "OK\n"

# 10 aliens (male/female) in expansion series
ids_expansion = [741, 2428, 3638, 4267, 4722, 4926,
                 6693, 8029, 8124, 9171]
ids_expansion.each do |id|
  punk = punks[id]
  aliens << punk
end


puts "  #{aliens.size} alien(s)"


## spoiler - the linear version (9 original -> 21 more -> 10 expansion aliens)

img = ImageComposite.new( 10, 4 )
aliens.each do |alien|
  img << alien
end

img.save( "./i/aliens.png" )
img.zoom(4).save("./i/aliens4x.png")



## note: to be deterministic with readme doc
##    use "hardcoded" version for now
indexes = [18, 23, 37, 26, 36, 21, 34, 39, 17, 4,
           38, 12, 20, 15, 25, 14, 9, 32, 6, 3,
           10, 0, 11, 2, 35, 29, 8, 24, 33, 5,
           30, 7, 22, 27, 13, 31, 1, 16, 19, 28]

## note: loop use "randomized / reshuffled" indexes
img = ImageComposite.new( 10, 4 )
indexes.each do |i|
  img << aliens[i]
end

img.save( "./i/aliens-randomized.png" )
img.zoom(4).save("./i/aliens-randomized4x.png")



##################
# bonus: try different alien colors let's use hue 90 (green-ish) and 0 (red-ish)
saturation =  0.13
lightness  = -0.30

hues = { green: 90,
         red:    0 }

hues.each do |hue_name, hue|

  base    = [hue, 0.86+saturation, 0.88+lightness]
  darker  = [hue, 0.52+saturation, 0.74+lightness]
  darkest = [hue, 0.35+saturation, 0.60+lightness]

  color_map = {
      '#c8fbfbff' => base,
      '#9be0e0ff' => darker,
      '#75bdbdff' => darkest,
      ## more aliens series uses different (alien) colors with up-to-4 variants!!
      '#B2FBF9FF' =>  base,  # variant 1
      '#BEFBFAFF' =>  base,  # variant 2
      '#B3FBF9FF' =>  base,  # variant 3
      '#B0FBFAFF' =>  base,  # variant 4!
      '#7CD3CFFF' =>  darker,
      '#8CDAD8FF' =>  darker,
      '#79D3D0FF' =>  darker,
      '#54A29FFF' =>  darkest,
      '#64B0AFFF' =>  darkest,
  }

  new_img = img.change_colors( color_map )
  new_img.save( "./i/aliens_#{hue_name}.png" )
  new_img.zoom(4).save( "./i/aliens_#{hue_name}4x.png" )
end


puts "bye"




__END__

def shuffle( ary )
  ## random randomized / reshuffled
  ## first interweave elements

  middle = ary.size / 2    # 40/2 = 20

  indexes = (0...middle).to_a
  indexes = indexes.shuffle

  ary_reshuffled = []
  middle.times do |i|
     ary_reshuffled << ary[ indexes[i] ]    ## e.g. 0, 1, 2
     ary_reshuffled << ary[ -(indexes[i]+1)]  ## e.g. -1, -2, -3
  end
  ary_reshuffled.shuffle.shuffle.shuffle  # let's shuffle three time
end



indexes = (0...40).to_a    ## 0 to 39  (using exclusive ... three dot range)
puts indexes.inspect
indexes = shuffle( indexes )
puts indexes.inspect       ## reshuffled randomized indexes
puts indexes.sort.inspect  ## double check after sort again 0,1,2,...

