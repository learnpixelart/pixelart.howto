# Arabian Nights Experiment - Amazing Princesses with Middle-Eastern Headwear

Here's the experiment - let's use a middle-eastern headwear building block ![](i/arab-hair.png)
and let's turn zero-attribute "plain vanilla" punkette archetypes
into amazing looking princesses out of Arabian Nights.


Let's add the new hair building block ![](i/arab-hair.png) to the four archetypes -
human (with the four variants, that is, lighter, light, dark, darker)
![](i/design-human-female_lighter.png)
![](i/design-human-female_light.png)
![](i/design-human-female_dark.png)
![](i/design-human-female_darker.png),
 zombie ![](i/design-zombie-female.png),
 ape ![](i/design-ape-female.png),
 alien ![](i/design-alien-female.png).


``` ruby
hair = Image.read( 'arab-hair.png' )

designs = [
  'human-female!lighter',
  'human-female!light',
  'human-female!dark',
  'human-female!darker',
  'zombie-female',
  'ape-female',
  'alien-female',
]


designs.each do |design|
  punk = Punks::Image.new( design: design )

  punk.compose!( hair )

  name = design.sub( '!', '_')   ## note: change human-female!lighter to human-female_lighter

  punk.save( "arab-#{name}.png" )
  punk.zoom(4).save( "arab-#{name}x4.png" )
end
```


Resulting in:

![](i/arab-human-female_lighter.png)
![](i/arab-human-female_light.png)
![](i/arab-human-female_dark.png)
![](i/arab-human-female_darker.png)
![](i/arab-zombie-female.png)
![](i/arab-ape-female.png)
![](i/arab-alien-female.png)

4x
![](i/arab-human-female_lighterx4.png)
![](i/arab-human-female_lightx4.png)
![](i/arab-human-female_darkx4.png)
![](i/arab-human-female_darkerx4.png)
![](i/arab-zombie-femalex4.png)
![](i/arab-ape-femalex4.png)
![](i/arab-alien-femalex4.png)



Let's add regular shades ![](i/regularshades.png):

![](i/arab-human-female_lighter_ii.png)
![](i/arab-human-female_light_ii.png)
![](i/arab-human-female_dark_ii.png)
![](i/arab-human-female_darker_ii.png)
![](i/arab-zombie-female_ii.png)
![](i/arab-ape-female_ii.png)
![](i/arab-alien-female_ii.png)

4x
![](i/arab-human-female_lighter_iix4.png)
![](i/arab-human-female_light_iix4.png)
![](i/arab-human-female_dark_iix4.png)
![](i/arab-human-female_darker_iix4.png)
![](i/arab-zombie-female_iix4.png)
![](i/arab-ape-female_iix4.png)
![](i/arab-alien-female_iix4.png)


Let's try a special edition with 3d glasses ![](i/3dglasses.png):


![](i/arab-human-female_lighter_iii.png)
![](i/arab-human-female_light_iii.png)
![](i/arab-human-female_dark_iii.png)
![](i/arab-human-female_darker_iii.png)
![](i/arab-zombie-female_iii.png)
![](i/arab-ape-female_iii.png)
![](i/arab-alien-female_iii.png)

4x
![](i/arab-human-female_lighter_iiix4.png)
![](i/arab-human-female_light_iiix4.png)
![](i/arab-human-female_dark_iiix4.png)
![](i/arab-human-female_darker_iiix4.png)
![](i/arab-zombie-female_iiix4.png)
![](i/arab-ape-female_iiix4.png)
![](i/arab-alien-female_iiix4.png)



That's it.  Right-click and save to get yourself a free princess.
Super rare arabian night alien princess! Never before seen arabian night zombie princess!

Yes, you can! Now generate your own amazing princesses.


## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.

