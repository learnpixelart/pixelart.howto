# Rastafaris Experiment - Cool Rasta Punks with Shades

Here's the experiment - let's use a rastafari hair building block ![](i/rastafari-hair.png)
and let's turn zero-attribute "plain vanilla" punk archetypes
into cool looking rastas with shades.


Let's add the new hair building block ![](i/rastafari-hair.png) to the four archetypes - 
human (with the four variants, that is, lighter, light, dark, darker)
![](i/design-human-male_lighter.png)
![](i/design-human-male_light.png)
![](i/design-human-male_dark.png)
![](i/design-human-male_darker.png),
 zombie ![](i/design-zombie-male.png), 
 ape ![](i/design-ape-male.png), 
 alien ![](i/design-alien-male.png) - 
and let's add four more archetypes - 
demon ![](i/design-demon-male.png), 
vampire ![](i/design-vampire-male.png), 
orc ![](i/design-orc-male.png), 
skeleton ![](i/design-skeleton-male.png) -  
for more fun.


``` ruby
hair = Image.read( 'rastafari-hair.png' )

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

  punk.compose!( hair )

  name = design.sub( '!', '_')   ## note: change human-male!lighter to human-male_lighter

  punk.save( "rastafari-#{name}.png" )
  punk.zoom(4).save( "rastafari-#{name}x4.png" )
end
```


Resulting in:

![](i/rastafari-human-male_lighter.png)
![](i/rastafari-human-male_light.png)
![](i/rastafari-human-male_dark.png)
![](i/rastafari-human-male_darker.png)
![](i/rastafari-zombie-male.png)
![](i/rastafari-ape-male.png)
![](i/rastafari-alien-male.png)
![](i/rastafari-demon-male.png)
![](i/rastafari-vampire-male.png)
![](i/rastafari-orc-male.png)
![](i/rastafari-skeleton-male.png)

4x
![](i/rastafari-human-male_lighterx4.png)
![](i/rastafari-human-male_lightx4.png)
![](i/rastafari-human-male_darkx4.png)
![](i/rastafari-human-male_darkerx4.png)
![](i/rastafari-zombie-malex4.png)
![](i/rastafari-ape-malex4.png)
![](i/rastafari-alien-malex4.png)
![](i/rastafari-demon-malex4.png)
![](i/rastafari-vampire-malex4.png)
![](i/rastafari-orc-malex4.png)
![](i/rastafari-skeleton-malex4.png)


Let's add regular shades ![](i/regularshades.png):

![](i/rastafari-human-male_lighter_ii.png)
![](i/rastafari-human-male_light_ii.png)
![](i/rastafari-human-male_dark_ii.png)
![](i/rastafari-human-male_darker_ii.png)
![](i/rastafari-zombie-male_ii.png)
![](i/rastafari-ape-male_ii.png)
![](i/rastafari-alien-male_ii.png)
![](i/rastafari-demon-male_ii.png)
![](i/rastafari-vampire-male_ii.png)
![](i/rastafari-orc-male_ii.png)
![](i/rastafari-skeleton-male_ii.png)

4x
![](i/rastafari-human-male_lighter_iix4.png)
![](i/rastafari-human-male_light_iix4.png)
![](i/rastafari-human-male_dark_iix4.png)
![](i/rastafari-human-male_darker_iix4.png)
![](i/rastafari-zombie-male_iix4.png)
![](i/rastafari-ape-male_iix4.png)
![](i/rastafari-alien-male_iix4.png)
![](i/rastafari-demon-male_iix4.png)
![](i/rastafari-vampire-male_iix4.png)
![](i/rastafari-orc-male_iix4.png)
![](i/rastafari-skeleton-male_iix4.png)


Let's add a pipe ![](i/pipe.png):


![](i/rastafari-human-male_lighter_iii.png)
![](i/rastafari-human-male_light_iii.png)
![](i/rastafari-human-male_dark_iii.png)
![](i/rastafari-human-male_darker_iii.png)
![](i/rastafari-zombie-male_iii.png)
![](i/rastafari-ape-male_iii.png)
![](i/rastafari-alien-male_iii.png)
![](i/rastafari-demon-male_iii.png)
![](i/rastafari-vampire-male_iii.png)
![](i/rastafari-orc-male_iii.png)
![](i/rastafari-skeleton-male_iii.png)

4x
![](i/rastafari-human-male_lighter_iiix4.png)
![](i/rastafari-human-male_light_iiix4.png)
![](i/rastafari-human-male_dark_iiix4.png)
![](i/rastafari-human-male_darker_iiix4.png)
![](i/rastafari-zombie-male_iiix4.png)
![](i/rastafari-ape-male_iiix4.png)
![](i/rastafari-alien-male_iiix4.png)
![](i/rastafari-demon-male_iiix4.png)
![](i/rastafari-vampire-male_iiix4.png)
![](i/rastafari-orc-male_iiix4.png)
![](i/rastafari-skeleton-male_iiix4.png)



Let's try a special edition with 3d glasses ![](i/3dglasses.png):


![](i/rastafari-human-male_lighter_iiii.png)
![](i/rastafari-human-male_light_iiii.png)
![](i/rastafari-human-male_dark_iiii.png)
![](i/rastafari-human-male_darker_iiii.png)
![](i/rastafari-zombie-male_iiii.png)
![](i/rastafari-ape-male_iiii.png)
![](i/rastafari-alien-male_iiii.png)
![](i/rastafari-demon-male_iiii.png)
![](i/rastafari-vampire-male_iiii.png)
![](i/rastafari-orc-male_iiii.png)
![](i/rastafari-skeleton-male_iiii.png)

4x
![](i/rastafari-human-male_lighter_iiiix4.png)
![](i/rastafari-human-male_light_iiiix4.png)
![](i/rastafari-human-male_dark_iiiix4.png)
![](i/rastafari-human-male_darker_iiiix4.png)
![](i/rastafari-zombie-male_iiiix4.png)
![](i/rastafari-ape-male_iiiix4.png)
![](i/rastafari-alien-male_iiiix4.png)
![](i/rastafari-demon-male_iiiix4.png)
![](i/rastafari-vampire-male_iiiix4.png)
![](i/rastafari-orc-male_iiiix4.png)
![](i/rastafari-skeleton-male_iiiix4.png)





That's it.  Right-click and save to get yourself a free rastafari.
Super rare rastafari alien! Never before seen rastafari demon!

Yes, you can! Now generate your own cool rastas.


## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.
