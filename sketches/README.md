# Black & White (Pencil Drawing) Sketch Pixel Art Experiment

Mint yourself free CryptoPunks in the Black & White (Pencil Drawing) Sketch pixel art series.


Here's the experiment - let's turn 24x24 pixelated CryptoPunks
into black & white sketch art.

How?

1. Let's use a white background.
2. Let's check if the left neighbouring (x-1) pixel is of a different color - if yes, draw a black vertical line.
3. Let's check if the top neighbouring (y-1) pixel is of a different color - if yes, draw a black horizontal line.
4. Repeat for all pixels.



## Alien Punk #3100


Let's try alien punk #3100. Let's mint a fresh 24x24 copy.



``` ruby
require 'cryptopunks'

punks = Punks::Image::Composite.read( './punks.png' )
punk = punks[ 3100 ]
punk.save( './punk-3100.png' )
```

![](i/punk-3100.png)


And let's try four sketch variants:

1.  Sketch Zoom - 4 pixels, Line (Brush) - 1 pixel   (the default)
2.  Sketch Zoom - 4 pixels, Line (Brush) - 4 pixels
3.  Sketch Zoom - 8 pixels, Line (Brush) - 2 pixels
4.  Sketch Zoom - 12 pixels, Line (Brush) - 3 pixels

``` ruby
punk_sketch = punk.sketch( 4 )
punk_sketch.save( './punk-3100_sketch4x.png' )

punk_sketch = punk.sketch( 4, line: 4 )
punk_sketch.save( './punk-3100_sketch4x4.png' )

punk_sketch = punk.sketch( 8, line: 2 )
punk_sketch.save( './punk-3100_sketch8x2.png' )

punk_sketch = punk.sketch( 12, line: 3 )
punk_sketch.save( './punk-3100_sketch12x3.png' )
```

And Voila!


![](i/punk-3100_sketch4x.png)

![](i/punk-3100_sketch4x4.png)

![](i/punk-3100_sketch8x2.png)

![](i/punk-3100_sketch12x3.png)



## More Punks - Zombies, Blondes, Beanies & Friends

Let's try another batch of punks.
Let's mint a fresh copy of zombie #3393, blondie #172
and beanie #2964.


``` ruby
ids = [3393, 172, 2964]
ids.each do |id|
  name = '%04d' % id
  punk = punks[id]
  punk.save( "./punk-#{name}.png" )
end
```

![](i/punk-3393.png)
![](i/punk-0172.png)
![](i/punk-2964.png)


And let's try four sketch variants:

1.  Sketch Zoom - 4 pixels, Line (Brush) - 1 pixel   (the default)
2.  Sketch Zoom - 4 pixels, Line (Brush) - 4 pixels
3.  Sketch Zoom - 8 pixels, Line (Brush) - 2 pixels
4.  Sketch Zoom - 12 pixels, Line (Brush) - 3 pixels


Let's add inside the loop:

``` ruby
ids.each do |id|
  # ...   see above

  punk_sketch = punk.sketch( 4 )
  punk_sketch.save( "./punk-#{name}_sketch4x.png" )

  punk_sketch = punk.sketch( 4, line: 4 )
  punk_sketch.save( "./punk-#{name}_sketch4x4.png" )

  punk_sketch = punk.sketch( 8, line: 2 )
  punk_sketch.save( "./punk-#{name}_sketch8x2.png" )

  punk_sketch = punk.sketch( 12, line: 3 )
  punk_sketch.save( "./punk-#{name}_sketch12x3.png" )
end
```

And Voila!


![](i/punk-3393_sketch4x.png)
![](i/punk-0172_sketch4x.png)
![](i/punk-2964_sketch4x.png)

![](i/punk-3393_sketch4x4.png)
![](i/punk-0172_sketch4x4.png)
![](i/punk-2964_sketch4x4.png)

![](i/punk-3393_sketch8x2.png)
![](i/punk-0172_sketch8x2.png)
![](i/punk-2964_sketch8x2.png)

![](i/punk-3393_sketch12x3.png)
![](i/punk-0172_sketch12x3.png)
![](i/punk-2964_sketch12x3.png)



##  Future Directions - Comments Welcome

Really not too bad for a first rough quick & dirty sketch experiment.

Ideas for future improvements:

- Use rounded corners for sketch lines?
- Use sketch lines off by 1 for for a neon "glowing" light effect?
- Your ideas here?  Please, tell.


## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.

