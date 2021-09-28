# Headphone -  Attribute of the Day  -  Punk w/ Headphone


Let's get inspired by [Bit Punk! on Cardano](https://bitpunkcardano.com) - see [#062](https://bitpunkcardano.com/bit/062/) - 
and let's design headphones from scratch:


``` ruby
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

headphone.save( 'headphone.png' )
headphone.zoom(4).save( 'headphone4x.png' )
```

Voila!

![](i/headphone.png) 4x ![](i/headphone4x.png)




And let's try the headphone ![](i/headphone.png)
on the punk archetypes
![](i/design-human-male_lighter.png)
![](i/design-human-male_light.png)
![](i/design-human-male_dark.png)
![](i/design-human-male_darker.png)
![](i/design-zombie-male.png)
![](i/design-ape-male.png)
![](i/design-alien-male.png):


``` ruby
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

  punk[4,12] = 0   if design == 'alien-male'   ## quick hack/fix for alien ear

  punk.compose!( headphone, 4, 4 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "punk_headphone-#{name}.png" )
  punk.zoom(4).save( "punk_headphone-#{name}x4.png" )
end
```


Voila!

![](i/punk_headphone-human-male_lighter.png)
![](i/punk_headphone-human-male_light.png)
![](i/punk_headphone-human-male_dark.png)
![](i/punk_headphone-human-male_darker.png)
![](i/punk_headphone-zombie-male.png)
![](i/punk_headphone-ape-male.png)
![](i/punk_headphone-alien-male.png)

4x
![](i/punk_headphone-human-male_lighterx4.png)
![](i/punk_headphone-human-male_lightx4.png)
![](i/punk_headphone-human-male_darkx4.png)
![](i/punk_headphone-human-male_darkerx4.png)
![](i/punk_headphone-zombie-malex4.png)
![](i/punk_headphone-ape-malex4.png)
![](i/punk_headphone-alien-malex4.png)




Let's add hair ![](i/hair.png).
Voila!

![](i/punk_headphone_ii-human-male_lighter.png)
![](i/punk_headphone_ii-human-male_light.png)
![](i/punk_headphone_ii-human-male_dark.png)
![](i/punk_headphone_ii-human-male_darker.png)
![](i/punk_headphone_ii-zombie-male.png)
![](i/punk_headphone_ii-ape-male.png)
![](i/punk_headphone_ii-alien-male.png)

4x
![](i/punk_headphone_ii-human-male_lighterx4.png)
![](i/punk_headphone_ii-human-male_lightx4.png)
![](i/punk_headphone_ii-human-male_darkx4.png)
![](i/punk_headphone_ii-human-male_darkerx4.png)
![](i/punk_headphone_ii-zombie-malex4.png)
![](i/punk_headphone_ii-ape-malex4.png)
![](i/punk_headphone_ii-alien-malex4.png)





## Day 2

Let's get inspired by
[Legion Punks on Solana](https://legionpunks.com/)
and let's design a headphone and hair all-in-one combo from scratch:



``` ruby
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

headphone_ii.save( 'headphone_ii.png' )
headphone_ii.zoom(4).save( 'headphone_ii4x.png' )
```

Voila!

![](i/headphone_ii.png) 4x ![](i/headphone_ii4x.png)


And again let's try the headphone + hair combo ![](i/headphone_ii.png)
on the punk archetypes
![](i/design-human-male_lighter.png)
![](i/design-human-male_light.png)
![](i/design-human-male_dark.png)
![](i/design-human-male_darker.png)
![](i/design-zombie-male.png)
![](i/design-ape-male.png)
![](i/design-alien-male.png).

Voila!

![](i/punk_headphone_iii-human-male_lighter.png)
![](i/punk_headphone_iii-human-male_light.png)
![](i/punk_headphone_iii-human-male_dark.png)
![](i/punk_headphone_iii-human-male_darker.png)
![](i/punk_headphone_iii-zombie-male.png)
![](i/punk_headphone_iii-ape-male.png)
![](i/punk_headphone_iii-alien-male.png)

4x
![](i/punk_headphone_iii-human-male_lighterx4.png)
![](i/punk_headphone_iii-human-male_lightx4.png)
![](i/punk_headphone_iii-human-male_darkx4.png)
![](i/punk_headphone_iii-human-male_darkerx4.png)
![](i/punk_headphone_iii-zombie-malex4.png)
![](i/punk_headphone_iii-ape-malex4.png)
![](i/punk_headphone_iii-alien-malex4.png)



That's it.  Now design and try your own attributes.
Yes, you can!



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.



