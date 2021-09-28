# Wizard -  Attribute of the Day  -  Punk w/ Wizard Hat


Let's get inspired by
[Legion Punks on Solana](https://legionpunks.com)
and let's design a wizard hat from scratch:



``` ruby
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

wizard.save( 'wizard.png' )
wizard.zoom(4).save( 'wizard4x.png' )
```

Voila!

![](i/wizard.png) 4x ![](i/wizard4x.png)




And let's try the wizard hat ![](i/wizard.png)
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

  punk.compose!( wizard, 4, 0 )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "punk_wizard-#{name}.png" )
  punk.zoom(4).save( "punk_wizard-#{name}x4.png" )
end
```


Voila!

![](i/punk_wizard-human-male_lighter.png)
![](i/punk_wizard-human-male_light.png)
![](i/punk_wizard-human-male_dark.png)
![](i/punk_wizard-human-male_darker.png)
![](i/punk_wizard-zombie-male.png)
![](i/punk_wizard-ape-male.png)
![](i/punk_wizard-alien-male.png)

4x
![](i/punk_wizard-human-male_lighterx4.png)
![](i/punk_wizard-human-male_lightx4.png)
![](i/punk_wizard-human-male_darkx4.png)
![](i/punk_wizard-human-male_darkerx4.png)
![](i/punk_wizard-zombie-malex4.png)
![](i/punk_wizard-ape-malex4.png)
![](i/punk_wizard-alien-malex4.png)


That's it.  Now design and try your own attributes.
Yes, you can!



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.

