# All Caps Experiment - Choose Your Own (Baseball) Cap Color


Here's the experiment - let's (re)draw
the (baseball) cap (from scratch / from zero)
and let's put the cap
with your own colors of choice onto any
zero-attribute "plain vanilla" punk archetype.


Let's use the online punk pixel drawing tool (see => [**cryptopunksnotdead.github.io**](https://cryptopunksnotdead.github.io) )
to draw the (baseball) cap in 14x5 size.


![](i/pixel-cap.png)

Tip: Use the print button to export the (baseball) cap into
a ready-to-cut-n-paste pixel matrix.


Let's try:

``` ruby
cap_design = <<TXT
. . @ @ @ @ @ @ @ . . . . .
. @ @ @ @ @ @ x @ @ . . . .
@ @ @ @ @ @ @ @ x @ . . . .
@ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT

cap = Image.parse( cap_design, colors: ['8119b7', 'b261dc'] )
cap.save( 'cap.png' )
cap.zoom(4).save( 'capx4.png' )
```

Resulting in:

![](i/cap.png)
![](i/capx4.png)




Let's put the cap onto the four archetypes
(human, zombie, ape, alien)  with the human in the four
variants (lighter, light, dark, darker)
and let's add four more archetypes
(vampire, orc, skeleton, mummy) for fun.

![](i/design-human-male_lighter.png)
![](i/design-human-male_light.png)
![](i/design-human-male_dark.png)
![](i/design-human-male_darker.png)
![](i/design-zombie-male.png)
![](i/design-ape-male.png)
![](i/design-alien-male.png)
![](i/design-vampire-male.png)
![](i/design-orc-male.png)
![](i/design-skeleton-male.png)
![](i/design-mummy-male.png)

![](i/design-human-male_lighterx4.png)
![](i/design-human-male_lightx4.png)
![](i/design-human-male_darkx4.png)
![](i/design-human-male_darkerx4.png)
![](i/design-zombie-malex4.png)
![](i/design-ape-malex4.png)
![](i/design-alien-malex4.png)
![](i/design-vampire-malex4.png)
![](i/design-orc-malex4.png)
![](i/design-skeleton-malex4.png)
![](i/design-mummy-malex4.png)


``` ruby
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

  x, y = [6, 4]                  ## head offset
  punk.compose!( cap, x, y )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "#{name}_279.png" )
  punk.zoom(4).save( "#{name}_279x4.png" )
end
```


Resulting in:

![](i/human-male_lighter_279.png)
![](i/human-male_light_279.png)
![](i/human-male_dark_279.png)
![](i/human-male_darker_279.png)
![](i/zombie-male_279.png)
![](i/ape-male_279.png)
![](i/alien-male_279.png)
![](i/vampire-male_279.png)
![](i/orc-male_279.png)
![](i/skeleton-male_279.png)
![](i/mummy-male_279.png)

![](i/human-male_lighter_279x4.png)
![](i/human-male_light_279x4.png)
![](i/human-male_dark_279x4.png)
![](i/human-male_darker_279x4.png)
![](i/zombie-male_279x4.png)
![](i/ape-male_279x4.png)
![](i/alien-male_279x4.png)
![](i/vampire-male_279x4.png)
![](i/orc-male_279x4.png)
![](i/skeleton-male_279x4.png)
![](i/mummy-male_279x4.png)



Let's try different colors for the (baseball) cap.
Note the original violet-ish colors are in the
red / green / blue (rgb) and in the hue / saturation / lightness
scheme:

-  51 pixel - #8119b7 / rgb(129  25 183) - hsl(279°  76%  41%)
-   2 pixel - #b261dc / rgb(178  97 220) - hsl(280°  64%  62%)

Let's change the hue 279° from the primary color
and let's keep all other color settings.
Let's try:

- 300°  => magenta
- 330°  => fuchsia
- 0°    => red
- 30°   => orange
- 90°   => chartreuse
- 120°  => green
- 240°  => blue

``` ruby
hues = [279, 300, 330, 0, 30, 90, 120, 240]
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

     punk.save( "#{name}.png" )
     punk.zoom(4).save( "#{name}x4.png" )
  end
end

```

Voila!

![](i/human-male_lighter_279.png)
![](i/human-male_lighter_300.png)
![](i/human-male_lighter_330.png)
![](i/human-male_lighter_000.png)
![](i/human-male_lighter_030.png)
![](i/human-male_lighter_090.png)
![](i/human-male_lighter_120.png)
![](i/human-male_lighter_240.png)


![](i/human-male_light_279.png)
![](i/human-male_light_300.png)
![](i/human-male_light_330.png)
![](i/human-male_light_000.png)
![](i/human-male_light_030.png)
![](i/human-male_light_090.png)
![](i/human-male_light_120.png)
![](i/human-male_light_240.png)

![](i/human-male_dark_279.png)
![](i/human-male_dark_300.png)
![](i/human-male_dark_330.png)
![](i/human-male_dark_000.png)
![](i/human-male_dark_030.png)
![](i/human-male_dark_090.png)
![](i/human-male_dark_120.png)
![](i/human-male_dark_240.png)

![](i/human-male_darker_279.png)
![](i/human-male_darker_300.png)
![](i/human-male_darker_330.png)
![](i/human-male_darker_000.png)
![](i/human-male_darker_030.png)
![](i/human-male_darker_090.png)
![](i/human-male_darker_120.png)
![](i/human-male_darker_240.png)

![](i/zombie-male_279.png)
![](i/zombie-male_300.png)
![](i/zombie-male_330.png)
![](i/zombie-male_000.png)
![](i/zombie-male_030.png)
![](i/zombie-male_090.png)
![](i/zombie-male_120.png)
![](i/zombie-male_240.png)

![](i/ape-male_279.png)
![](i/ape-male_300.png)
![](i/ape-male_330.png)
![](i/ape-male_000.png)
![](i/ape-male_030.png)
![](i/ape-male_090.png)
![](i/ape-male_120.png)
![](i/ape-male_240.png)

![](i/alien-male_279.png)
![](i/alien-male_300.png)
![](i/alien-male_330.png)
![](i/alien-male_000.png)
![](i/alien-male_030.png)
![](i/alien-male_090.png)
![](i/alien-male_120.png)
![](i/alien-male_240.png)

![](i/vampire-male_279.png)
![](i/vampire-male_300.png)
![](i/vampire-male_330.png)
![](i/vampire-male_000.png)
![](i/vampire-male_030.png)
![](i/vampire-male_090.png)
![](i/vampire-male_120.png)
![](i/vampire-male_240.png)

![](i/orc-male_279.png)
![](i/orc-male_300.png)
![](i/orc-male_330.png)
![](i/orc-male_000.png)
![](i/orc-male_030.png)
![](i/orc-male_090.png)
![](i/orc-male_120.png)
![](i/orc-male_240.png)

![](i/skeleton-male_279.png)
![](i/skeleton-male_300.png)
![](i/skeleton-male_330.png)
![](i/skeleton-male_000.png)
![](i/skeleton-male_030.png)
![](i/skeleton-male_090.png)
![](i/skeleton-male_120.png)
![](i/skeleton-male_240.png)

![](i/mummy-male_279.png)
![](i/mummy-male_300.png)
![](i/mummy-male_330.png)
![](i/mummy-male_000.png)
![](i/mummy-male_030.png)
![](i/mummy-male_090.png)
![](i/mummy-male_120.png)
![](i/mummy-male_240.png)


4x

![](i/human-male_lighter_279x4.png)
![](i/human-male_lighter_300x4.png)
![](i/human-male_lighter_330x4.png)
![](i/human-male_lighter_000x4.png)
![](i/human-male_lighter_030x4.png)
![](i/human-male_lighter_090x4.png)
![](i/human-male_lighter_120x4.png)
![](i/human-male_lighter_240x4.png)

![](i/human-male_light_279x4.png)
![](i/human-male_light_300x4.png)
![](i/human-male_light_330x4.png)
![](i/human-male_light_000x4.png)
![](i/human-male_light_030x4.png)
![](i/human-male_light_090x4.png)
![](i/human-male_light_120x4.png)
![](i/human-male_light_240x4.png)

![](i/human-male_dark_279x4.png)
![](i/human-male_dark_300x4.png)
![](i/human-male_dark_330x4.png)
![](i/human-male_dark_000x4.png)
![](i/human-male_dark_030x4.png)
![](i/human-male_dark_090x4.png)
![](i/human-male_dark_120x4.png)
![](i/human-male_dark_240x4.png)

![](i/human-male_darker_279x4.png)
![](i/human-male_darker_300x4.png)
![](i/human-male_darker_330x4.png)
![](i/human-male_darker_000x4.png)
![](i/human-male_darker_030x4.png)
![](i/human-male_darker_090x4.png)
![](i/human-male_darker_120x4.png)
![](i/human-male_darker_240x4.png)

![](i/zombie-male_279x4.png)
![](i/zombie-male_300x4.png)
![](i/zombie-male_330x4.png)
![](i/zombie-male_000x4.png)
![](i/zombie-male_030x4.png)
![](i/zombie-male_090x4.png)
![](i/zombie-male_120x4.png)
![](i/zombie-male_240x4.png)

![](i/ape-male_279x4.png)
![](i/ape-male_300x4.png)
![](i/ape-male_330x4.png)
![](i/ape-male_000x4.png)
![](i/ape-male_030x4.png)
![](i/ape-male_090x4.png)
![](i/ape-male_120x4.png)
![](i/ape-male_240x4.png)

![](i/alien-male_279x4.png)
![](i/alien-male_300x4.png)
![](i/alien-male_330x4.png)
![](i/alien-male_000x4.png)
![](i/alien-male_030x4.png)
![](i/alien-male_090x4.png)
![](i/alien-male_120x4.png)
![](i/alien-male_240x4.png)

![](i/vampire-male_279x4.png)
![](i/vampire-male_300x4.png)
![](i/vampire-male_330x4.png)
![](i/vampire-male_000x4.png)
![](i/vampire-male_030x4.png)
![](i/vampire-male_090x4.png)
![](i/vampire-male_120x4.png)
![](i/vampire-male_240x4.png)

![](i/orc-male_279x4.png)
![](i/orc-male_300x4.png)
![](i/orc-male_330x4.png)
![](i/orc-male_000x4.png)
![](i/orc-male_030x4.png)
![](i/orc-male_090x4.png)
![](i/orc-male_120x4.png)
![](i/orc-male_240x4.png)

![](i/skeleton-male_279x4.png)
![](i/skeleton-male_300x4.png)
![](i/skeleton-male_330x4.png)
![](i/skeleton-male_000x4.png)
![](i/skeleton-male_030x4.png)
![](i/skeleton-male_090x4.png)
![](i/skeleton-male_120x4.png)
![](i/skeleton-male_240x4.png)

![](i/mummy-male_279x4.png)
![](i/mummy-male_300x4.png)
![](i/mummy-male_330x4.png)
![](i/mummy-male_000x4.png)
![](i/mummy-male_030x4.png)
![](i/mummy-male_090x4.png)
![](i/mummy-male_120x4.png)
![](i/mummy-male_240x4.png)


That's it for now.  Now use your own colors
or design your own caps. Yes, you can!



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.
