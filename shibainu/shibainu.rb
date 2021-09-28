require 'pixelart'


## pre-define some (standard) colors (in rgb hex)
BLACK = '000000'
WHITE = 'FFFFFF'



design =<<TXT     # 24x24 pixels (1 color - black outline) - stage 1
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . @ . . . . . . . . . . . . . @ . . . . .
. . . @ . @ . . . . . . . . . . . @ . @ . . . .
. . . @ . . @ . @ @ @ @ @ @ @ . @ . . @ . . . .
. . . @ . . . @ . . . . . . . @ . . . @ . . . .
. . . @ . . . . . . . . . . . . . . . @ . . . .
. . . @ . . . . . . . . . . . . . . . @ . . . .
. . . @ . . . . . . . . . . . . . . . @ . . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . @ . . . . @ @ . . . . . @ @ . . . . @ . . .
. . @ . . . @ . . @ . . . @ . . @ . . . @ . . .
. @ . . . . . . . . . . . . . . . . . . . @ . .
. @ . . . . . . . . @ @ @ . . . . . . . . @ . .
. @ . . . . . . . . @ @ @ . . . . . . . . @ . .
. @ . . . . @ @ . . . @ . . . @ @ . . . . @ . .
. . @ . . . . . @ @ @ . @ @ @ . . . . . @ . . .
. . . @ . . . . . . . . . . . . . . . @ . . . .
. . . . @ . . . . . . . . . . . . . @ . . . . .
. . . . . @ @ . . . . . . . . . @ @ . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
TXT


shibainu = Image.parse( design, colors: [BLACK] )
shibainu.save( "i/shibainu_outline.png" )
shibainu.zoom(8).save( "i/shibainu_outline8x.png" )



design =<<TXT     # 24x24 pixels (4 colors - black, base 1, base 2, white)
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . @ . . . . . . . . . . . . . @ . . . . .
. . . @ x @ . . . . . . . . . . . @ o @ . . . .
. . . @ x x @ . @ @ @ @ @ @ @ . @ o o @ . . . .
. . . @ x ^ x @ x o o o o o o @ o ^ o @ . . . .
. . . @ x ^ ^ x o o o o o o o o ^ ^ o @ . . . .
. . . @ x ^ x o o o o o o o o o o ^ o @ . . . .
. . . @ x x o o o o o o o o o o o o o @ . . . .
. . @ x x o o o ^ ^ o o o ^ ^ o o o o o @ . . .
. . @ x x o o o o ^ o o o ^ o o o o o o @ . . .
. . @ x x o o @ @ o o o o o @ @ o o o o @ . . .
. . @ x ^ o @ o o @ o ^ o @ o o @ o ^ o @ . . .
. @ x ^ ^ ^ o o o o ^ ^ ^ o o o o ^ ^ ^ o @ . .
. @ x ^ ^ ^ ^ ^ ^ ^ @ @ @ ^ ^ ^ ^ ^ ^ ^ o @ . .
. @ x ^ ^ ^ ^ ^ ^ ^ @ @ @ ^ ^ ^ ^ ^ ^ ^ o @ . .
. @ x x ^ ^ @ @ ^ ^ ^ @ ^ ^ ^ @ @ ^ ^ ^ o @ . .
. . @ x ^ ^ ^ ^ @ @ @ ^ @ @ @ ^ ^ ^ ^ o @ . . .
. . . @ x ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ o @ . . . .
. . . . @ x x x ^ ^ ^ ^ ^ ^ ^ o o o @ . . . . .
. . . . . @ @ x x x x x o o o o @ @ . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
TXT


shibainu = Image.parse( design, colors: [BLACK, 'FBB400', 'FBD200', WHITE] )
shibainu.save( "i/shibainu.png" )
shibainu.zoom(8).save( "i/shibainu8x.png" )



################
#  kawaii dog


design =<<TXT     # 24x24 pixels  (1 color - black outline) - stage 1
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . @ @ . . . . . . . . . . . . . @ @ . . . .
. . . @ . @ . . . . . . . . . . . @ . @ . . . .
. . @ . . . @ . . . . . . . . . @ . . . @ . . .
. . @ . . . . @ . . . . . . . @ . . . . @ . . .
. . @ . . . . . @ @ @ @ @ @ @ . . . . . @ . . .
. . @ . . . . @ . . . . . . . @ . . . . @ . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. @ . . . . @ @ . . . . . . . @ @ . . . . @ . .
@ . . . . . @ @ @ . . . . . @ @ @ . . . . . @ .
@ . . . . . . . . . . . . . . . . . . . . . @ .
@ . . . . . . . . . @ @ @ . . . . . . . . . @ .
@ . . . . . . @ . . . @ . . . @ . . . . . . @ .
. @ . . . . . . @ @ @ @ @ @ @ . . . . . . @ . .
. @ . . . . . . . . . . . . . . . . . . . @ . .
. . @ . . . . . . . . . . . . . . . . . @ . . .
. . . @ . . . . . . . . . . . . . . @ @ . . . .
. . . . @ @ @ . . . . . . . . . @ @ @ . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
TXT

kawaiidog = Image.parse( design, colors: [BLACK] )
kawaiidog.save( "i/kawaiidog_outline.png" )
kawaiidog.zoom(8).save( "i/kawaiidog_outline8x.png" )




design =<<TXT     # 24x24 pixels
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . @ @ . . . . . . . . . . . . . @ @ . . . .
. . . @ x @ . . . . . . . . . . . @ x @ . . . .
. . @ x x x @ . . . . . . . . . @ x x x @ . . .
. . @ x ^ x x @ . . . . . . . @ x x ^ x @ . . .
. . @ x ^ ^ x x @ @ @ @ @ @ @ x x ^ ^ x @ . . .
. . @ x ^ ^ x @ x x x x x x x @ x ^ ^ x @ . . .
. . @ x ^ ^ ^ x x x x x x x x x ^ ^ ^ x @ . . .
. . @ x ^ x x x x x x x x x x x x x ^ x @ . . .
. . @ x x x x ^ ^ ^ x x x ^ ^ ^ x x x x @ . . .
. . @ x x x x x x ^ x x x ^ x x x x x x @ . . .
. @ x x x x @ @ x x x x x x x @ @ x x x x @ . .
@ x x x x x @ @ @ x ^ ^ x x @ @ @ x x x x x @ .
@ x ^ x x x x ^ ^ ^ ^ ^ ^ ^ ^ ^ x x x x ^ x @ .
@ x ^ ^ ^ ^ ^ ^ ^ ^ @ @ @ ^ ^ ^ ^ ^ ^ ^ ^ x @ .
@ x ^ ^ ^ ^ ^ @ ^ ^ ^ @ ^ ^ ^ @ ^ ^ ^ ^ ^ x @ .
. @ x ^ ^ ^ ^ ^ @ @ @ @ @ @ @ ^ ^ ^ ^ ^ x @ . .
. @ x ^ ^ ^ ^ ^ ^ ^ o o o ^ ^ ^ ^ ^ ^ ^ x @ . .
. . @ x x ^ ^ ^ ^ ^ o o o ^ ^ ^ ^ ^ x x @ . . .
. . . @ x x x x ^ ^ ^ ^ ^ ^ ^ x x x @ @ . . . .
. . . . @ @ @ x x x x x x x x x @ @ @ . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
TXT


kawaiidog = Image.parse( design, colors: [BLACK, 'CC6C17', 'E45157', WHITE] )
kawaiidog.save( "i/kawaiidog.png" )
kawaiidog.zoom(8).save( "i/kawaiidog8x.png" )



###
# bonus - let's add pencil sketch drawings


### todo/fix - move/add to pixelart gem
module Pixelart
  class Image
    def sketch( sketch=4, line: 1 )
       # todo: line - find a better name eg. line_strenght/width or such?
      width  = @img.width*sketch  + (@img.width+1)*line
      height = @img.height*sketch + (@img.height+1)*line

      puts "  #{width}x#{height}"

      img = Image.new( width, height, Color::WHITE )

      @img.width.times do |x|
        @img.height.times do |y|
          pixel = @img[x,y]

          ## get surrounding pixels - if "out-of-bound" use transparent (0)
          left   =  x == 0  ? Color::TRANSPARENT : @img[x-1,y]
          top    =  y == 0  ? Color::TRANSPARENT : @img[x  ,y-1]

          if pixel != left   ## draw vertical line
              (sketch+line*2).times do |n|
                line.times do |m|
                  img[    x*sketch + line*x + m,
                      n + y*sketch + line*y] = Color::BLACK
                end
              end
          end

          if pixel != top   ## draw horizontal line
             (sketch+line*2).times do |n|
               line.times do |m|
                 img[n + x*sketch + line*x,
                         y*sketch + line*y + m] = Color::BLACK
                end
             end
          end


          ## check special edge case for x and y to add "finish-up" right and bottom line
          if x == @img.width-1 && pixel != Color::TRANSPARENT
             ## draw vertical line
             (sketch+line*2).times do |n|
              line.times do |m|
                img[    (x+1)*sketch + line*(x+1) + m,
                    n + y*sketch + line*y] = Color::BLACK
              end
             end
          end

          if y== @img.height-1 && pixel != Color::TRANSPARENT
            ## draw horizontal line
            (sketch+line*2).times do |n|
              line.times do |m|
                img[n + x*sketch + line*x,
                        (y+1)*sketch + line*(y+1) + m] = Color::BLACK
              end
            end
          end
        end
      end

      img
  end
end # class Image
end # module Pixelart





shibainu_sketch = shibainu.sketch( 1 )
shibainu_sketch.save( './i/shibainu_sketch.png' )

shibainu_sketch = shibainu.sketch( 4 )
shibainu_sketch.save( './i/shibainu_sketch4x.png' )

shibainu_sketch = shibainu.sketch( 8, line: 2 )
shibainu_sketch.save( './i/shibainu_sketch8x2.png' )




kawaiidog_sketch = kawaiidog.sketch( 1 )
kawaiidog_sketch.save( './i/kawaiidog_sketch.png' )

kawaiidog_sketch = kawaiidog.sketch( 4 )
kawaiidog_sketch.save( './i/kawaiidog_sketch4x.png' )

kawaiidog_sketch = kawaiidog.sketch( 8, line: 2 )
kawaiidog_sketch.save( './i/kawaiidog_sketch8x2.png' )



puts "bye"
