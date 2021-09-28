# Turn Punks Upside Down Experiment  - Flipped Punks (Horizontally)


Let's turn punks upside down, that is, flip the image horizontally.
Let's try punk #3393, #172 and #2964:


``` ruby
punks = Punks::Image::Composite.read( 'punks.png' )

ids = [
 3393,   # zombie
 172,    # blondie
 2964,   # beanie
]

ids.each do |id|
  name = '%04d' % id
  punk = punks[id]
  punk_flipped = punk.flip

  punk_flipped.save( "./i/punk-#{name}_flipped.png" )
  punk_flipped.zoom(4).save( "./i/punk-#{name}_flipped4x.png" )
end
```

Voila!

![](i/punk-3393_flipped.png)
![](i/punk-0172_flipped.png)
![](i/punk-2964_flipped.png)

4x:

![](i/punk-3393_flipped4x.png)
![](i/punk-0172_flipped4x.png)
![](i/punk-2964_flipped4x.png)




Not phunk enough?  Use mirror (flip_vertically) to turn right-looking punks into left-looking phunks. Let's try:

``` ruby
ids.each do |id|
  name = '%04d' % id
  punk = punks[id]
  phunk_flipped = punk.flip.mirror

  phunk_flipped.save( "./i/phunk-#{name}_flipped.png" )
  phunk_flipped.zoom(4).save( "./i/phunk-#{name}_flipped4x.png" )
end
```

Voila!

![](i/phunk-3393_flipped.png)
![](i/phunk-0172_flipped.png)
![](i/phunk-2964_flipped.png)

4x:

![](i/phunk-3393_flipped4x.png)
![](i/phunk-0172_flipped4x.png)
![](i/phunk-2964_flipped4x.png)



That's it. Yes, you can. Start you own flipped upside down collection.



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.

