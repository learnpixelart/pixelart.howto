# Wall Street Bets Experiment - Power to the Punks - Draw Your Own Wall Street Bets Degenerate (from Scratch)


Mint Yourself Free Punks in the "Degenerate" Wall Street Bets Style


Here's the experiment - let's draw a hair-do and sun glasses (from scratch / from zero)
and let's turn zero-attribute "plain vanilla" punk archetypes
into cool looking wall street bets degen traders with shades.


Let's use the online punk pixel drawing tool (see => [**cryptopunksnotdead.github.io**](https://cryptopunksnotdead.github.io) )
to draw a wall street bets hair-do.


![](i/pixel-hair.png)

Tip: Use the print button to export the hair-do into
a ready-to-cut-n-paste pixel matrix.

Let's try:

``` ruby
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

hair.save( 'hair.png' )
hair.zoom(4).save( 'hairx4.png' )
```

Resulting in:

![](i/hair.png)
![](i/hairx4.png)


And let's design the shades:

![](i/pixel-shades.png)


``` ruby
shades = Image.parse( <<TXT, colors: ['000000'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ @ @ @ . . @ @ @ @
. . . @ @ . . . . @ @ .
TXT

shades.save( 'shades.png' )
shades.zoom(4).save( 'shadesx4.png' )
```

Resulting in:

![](i/shades.png)
![](i/shadesx4.png)



Let's add the new hair-do and shades to the four archetypes
(human, zombie, ape, alien)  with the human in the four
variants (lighter, light, dark, darker)
and let's add four more archetypes
(demon, vampire, orc, skeleton) for fun.

![](i/design-human-male_lighter.png)
![](i/design-human-male_light.png)
![](i/design-human-male_dark.png)
![](i/design-human-male_darker.png)
![](i/design-zombie-male.png)
![](i/design-ape-male.png)
![](i/design-alien-male.png)
![](i/design-demon-male.png)
![](i/design-vampire-male.png)
![](i/design-orc-male.png)
![](i/design-skeleton-male.png)

![](i/design-human-male_lighterx4.png)
![](i/design-human-male_lightx4.png)
![](i/design-human-male_darkx4.png)
![](i/design-human-male_darkerx4.png)
![](i/design-zombie-malex4.png)
![](i/design-ape-malex4.png)
![](i/design-alien-malex4.png)
![](i/design-demon-malex4.png)
![](i/design-vampire-malex4.png)
![](i/design-orc-malex4.png)
![](i/design-skeleton-malex4.png)



``` ruby
designs = [
  'human-male!lighter',
  'human-male!light',
  'human-male!dark',
  'human-male!darker',
  'zombie-male',
  'ape-male',
  'alien-male',
  'demon-male',
  'vampire-male',
  'orc-male',
  'skeleton-male',
]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair,   3, 2  )  ## hair offset (x:3,y:2)
  punk.compose!( shades, 6, 11 )  ## shades offset (x:6,y:11)

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "wallstreetbets-#{name}.png" )
  punk.zoom(4).save( "wallstreetbets-#{name}x4.png" )
end
```


Resulting in:

![](i/wallstreetbets-human-male_lighter.png)
![](i/wallstreetbets-human-male_light.png)
![](i/wallstreetbets-human-male_dark.png)
![](i/wallstreetbets-human-male_darker.png)
![](i/wallstreetbets-zombie-male.png)
![](i/wallstreetbets-ape-male.png)
![](i/wallstreetbets-alien-male.png)
![](i/wallstreetbets-demon-male.png)
![](i/wallstreetbets-vampire-male.png)
![](i/wallstreetbets-orc-male.png)
![](i/wallstreetbets-skeleton-male.png)

![](i/wallstreetbets-human-male_lighterx4.png)
![](i/wallstreetbets-human-male_lightx4.png)
![](i/wallstreetbets-human-male_darkx4.png)
![](i/wallstreetbets-human-male_darkerx4.png)
![](i/wallstreetbets-zombie-malex4.png)
![](i/wallstreetbets-ape-malex4.png)
![](i/wallstreetbets-alien-malex4.png)
![](i/wallstreetbets-demon-malex4.png)
![](i/wallstreetbets-vampire-malex4.png)
![](i/wallstreetbets-orc-malex4.png)
![](i/wallstreetbets-skeleton-malex4.png)


That's it.  Right-click and save to get yourself a free degen.
Super rare degen alien! Never before seen degen demon!

Yes, you can! Now design your own hair-do and/or sunglasses.



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.
