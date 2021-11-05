#  The Making of Adam (24x24 Pixel Punk) from Scratch / Zero Using Pixel Art Designs in the ASCII Text Format - 1-Bit Black & White Edition



## Step 1 - Generate 24x24 Attributes From Pixel Art (In ASCII Text Format)


Let's start with the (base) face - in a 1-bit black & white pixel edition:

``` ruby
require 'pixelart'

colors = {
  '.' => 0,           # transparent
  '0' => 'ffffff',    # color 0 - white
  '1' => '000000',    # color 1 - black
}

img = Image.parse( <<TXT, colors: colors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . 1 1 1 1 1 1 1 . . . . . . . . .
. . . . . . . 1 0 0 0 0 0 0 0 1 . . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 1 1 0 0 0 1 1 1 . . . . . . .
. . . . . 1 0 0 0 1 0 0 0 0 1 0 1 . . . . . . .
. . . . . 1 0 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . 1 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 1 1 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 1 1 1 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 0 1 . . . . . . .
. . . . . . 1 0 0 0 0 0 0 0 0 1 . . . . . . . .
. . . . . . 1 0 0 0 1 1 1 1 1 . . . . . . . . .
. . . . . . 1 0 0 0 1 . . . . . . . . . . . . .
. . . . . . 1 0 0 0 1 . . . . . . . . . . . . .
TXT

img.save( "./i/attributes/face.png" )
img.zoom(4).save( "./i/attributes/face@4x.png" )
```

Voila!

![](i/attributes/face.png) 4x ![](i/attributes/face@4x.png)




Let's add a hair-do attribute. Note: Let's place
all attributes in a 24x24 canvas (for easier image composition):

``` ruby
hair = Image.parse( <<TXT, colors: colors )
. . . . . 1 . . . . 1 . . . . . . .
. . . . 1 1 1 1 1 1 1 1 1 1 1 . . .
. . . . 1 1 1 1 1 1 1 1 1 1 1 1 . .
. . 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 .
1 . . 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 .
. . 1 1 1 1 1 1 . . 1 . 1 . 1 . . .
. . 1 1 . . 1 . . . . . . . . . . .
. 1 1 1 . . . . . . . . . . . . . .
. 1 1 . . . . . . . . . . . . . . .
. . 1 . . . . . . . . . . . . . . .
. . 1 . . . . . . . . . . . . . . .
. 1 . . . . . . . . . . . . . . . .
TXT
img = Image.new( 24, 24 )
img.compose!( hair, 2, 2 )   # place in 24x24 canvas (image) with x/y offset

img.save( "./i/attributes/hair.png")
img.zoom(4).save( "./i/attributes/hair@4x.png")
```

Voila!

![](i/attributes/hair.png) 4x ![](i/attributes/hair@4x.png)



Let's add a laser eyes attribute:

``` ruby
lasereyes = Image.parse( <<TXT, colors: colors )
. . . . 1 . . . . . 1 . . . .
. . . . 1 . . . . . 1 . . . .
. . . 1 1 1 . . . 1 1 1 . . .
1 1 1 1 0 1 1 . 1 1 0 1 1 1 1
. . . 1 1 1 . . . 1 1 1 . . .
. . . . 1 . . . . . 1 . . . .
. . . . 1 . . . . . 1 . . . .
TXT
img = Image.new( 24, 24 )
img.compose!( lasereyes, 5, 8 )   # place in 24x24 canvas (image) with x/y offset

img.save( "./i/attributes/lasereyes.png")
img.zoom(4).save( "./i/attributes/lasereyes@4x.png")
```

Voila!

![](i/attributes/lasereyes.png) 4x ![](i/attributes/lasereyes@4x.png)



## Step 2 - All-Together Now - Generate 24x24 Pixel Punk From Attributes


Let's put together Adam on transparent background:


``` ruby
punk = Image.new( 24, 24 )   # canvas (image) with transparent background color
punk.compose!( Image.read( "i/attributes/face.png" ))
punk.compose!( Image.read( "i/attributes/hair.png" ))
punk.compose!( Image.read( "i/attributes/lasereyes.png" ))

punk.save( "./i/adam.png" )
punk.zoom(4).save( "i/adam@4x.png")
punk.zoom(8).save( "i/adam@8x.png")
```

Voila!

![](i/adam.png)
4x ![](i/adam@4x.png)
8x ![](i/adam@8x.png)


Bonus - Try some variants - flip (horizontally):

``` ruby
punk.flip.save( "./i/adam_flipped.png" )  ## flip horizontally
punk.flip.zoom(4).save( "i/adam_flipped@4x.png")
punk.flip.zoom(8).save( "i/adam_flipped@8x.png")
```

Voila!

![](i/adam_flipped.png)
4x ![](i/adam_flipped@4x.png)
8x ![](i/adam_flipped@8x.png)


Or left is the new right:

``` ruby
punk.mirror.save( "./i/adam_left.png" )
punk.mirror.zoom(4).save( "i/adam_left@4x.png")
punk.mirror.zoom(8).save( "i/adam_left@8x.png")
```

![](i/adam_left.png)
4x ![](i/adam_left@4x.png)
8x ![](i/adam_left@8x.png)



That's it. Now create your own Adam (or Eve). Yes, you can.


## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.





