# Inside the CryptoPunks Bubble - Greyscale / Grayscale Punks Collection Case Study - Conceptual Art (Parody)? (Get-Rich-Quick) Cash Grab? Greater Fools (Financial) Fraud?


Let's have a looksie at the Greyscale Punks collection:

>  AND WE'RE LIVE!
>
> 10 Greyscale Punks will be listed for .03 ETH (\~$100) over the span of the next 10 minutes. GOOD LUCK TO YOU ALL!
>
>> SOLD OUT
>>
>> Absolute MADNESS!
>>
>>  -- [Greyscale Punks, August 15, 2021](https://twitter.com/GreyscalePunks/status/1426705561375191040)
>
>
> RECORD SALE
>
> Greyscale Punk #2243 ![](i/punk2243_grayscale.png) just resold for a whopping 1.2 ETH (~$4000)!  4000% profit!
>
> -- [Greyscale Punks, August 22, 2021](https://twitter.com/GreyscalePunks/status/1429315962910740481)


Is this a conceptual art parody? Or is this a (get-rich-quick) cash grab? Or a greater fools (financial) fraud?


Find the Greyscale collection on the web - see [**greyscalepunks.com**](https://greyscalepunks.com) - or on the Open Sea [digital token market] -
see [**collection/greyscalepunks**](https://opensea.io/collection/greyscalepunks) - or follow updates on Twitter - see [**@GreyscalePunks**](https://twitter.com/GreyscalePunks).


The blurb reads:

> Greyscale Punks is an art token collection of Punks with a unique twist! Every day,
> at no specific time, new Greyscale Punks will be created,
> (with a supply cap of 10,000) starting at a price of just .02 ETH (\~$66).
> Every week, however, the starting price of each Greyscale Punk created
> will increase by .005 ETH (\~$15),
> raising the floor to protect your previous investments
> and add value to the project as it grows. This will cap at .05 ETH (\~$170),
> and when that happens the base price of a new Greyscale Punk will no longer rise.
> Each Greyscale Punk created is a 1 of 1, meaning there will never be any duplicates created!


As of August/24, 2021  - about ten days after launching the market analytics summary reads:

- 1 300 / 10 000 Items 
- 557 Owners
- 0.04 ETH (\~$130) Floor Price
- 60.8 ETH (\~$200 000) Traded


**Update (August/26, 2021)**

> A new collection titled "Grayscale Punks" (with an A not an E in the word "Greyscale") was minted two days ago claiming to be the original. 
> Obviously, we have no association with them. Be careful!
>
> -- [Greyscale Punks, August 28, 2021](https://twitter.com/GreyscalePunks/status/1430752574022500353)
>
> The first 10 #GrayscalePunks are SOLD OUT!
>
> YOU GUYS ROCK!
>
> You will get your FREE 3D Card art token within 24 hours.
>
> Next drop today at 12pm.
>
> -- [Grayscale Punks, August 24, 2021](https://twitter.com/GrayscalePunks/status/1430034787901743107)

Find the - yes, original! with fresh punk designs in the original 24x24 format - Grayscale collection on the web - see [**grayscalepunks.com**](https://grayscalepunks.com) - or on the Open Sea [digital token market] -
see [**collection/grayscale-punks**](https://opensea.io/collection/grayscale-punks) - or follow updates on Twitter - see [**@grayscalepunks**](https://twitter.com/GrayscalePunks).

As of August/26, 2021  - about two days after launching the market analytics summary reads:

- 30 / 999 Items
- 9 Owners
- 0.01 ETH (\~$30) Floor Price
- 0.14 ETH (\~$400) Traded




So what?  Here's the formula / script to turn all 10 000 original punks into free grayscales
in less than ten seconds.
Let's try:



``` ruby
require 'cryptopunks'


print "==> loading image..."
punks = Punks::Image::Composite.read( 'punks.png' )
print "OK\n"


## change all 10 000 punks to grayscale
punks_grayscale = punks.grayscale
punks_grayscale.save( "punks_grayscale.png" )
```

Voila!  A 10x10 preview:

![](i/punks_grayscale_preview.png)

Download [**punks_grayscale.png**](i/punks_grayscale.png) (~800k) for all 10 000 grayscale punks.


And let's have a looksie at the first four grayscale punks and let's generate 8x versions.


``` ruby
## reload as a composite image (with easy tile access via [])
punks_grayscale =  Punks::Image::Composite.read( 'punks_grayscale.png' )

## let's have a looksie at the first four grayscale punks
(0..4).each do |id|
  punk = punks_grayscale[id]

  punk.save( "punk#{id}_grayscale.png" )
  punk.zoom(8).save( "punk#{id}_grayscalex8.png" )
end
```


Voila!

![](i/punk0_grayscale.png)
![](i/punk1_grayscale.png)
![](i/punk2_grayscale.png)
![](i/punk3_grayscale.png)

8x

![](i/punk0_grayscalex8.png)
![](i/punk1_grayscalex8.png)
![](i/punk2_grayscalex8.png)
![](i/punk3_grayscalex8.png)



What's Next?
Let's try another round with ye olde' sepia vintage colors - ready to sell off to greater fools.

``` ruby
## change all 10 000 punks to sepia
punks_sepia = punks.change_palette8bit( Palette8bit::SEPIA )
punks_sepia.save( "punks_sepia.png" )
```


Voila!  A 10x10 preview:

![](i/punks_sepia_preview.png)

Download [**punks_sepia.png**](i/punks_sepia.png) (~800k) for all ye 10 000 olde' sepia vinatage punks.


And again let's have a looksie at the first four sepia punks and let's generate 8x versions.


``` ruby
## reload as a composite image (with easy tile access via [])
punks_sepia =  Punks::Image::Composite.read( 'punks_sepia.png' )

## let's have a looksie at the first four sepia punks
(0..4).each do |id|
  punk = punks_sepia[id]

  punk.save( "punk#{id}_sepia.png" )
  punk.zoom(8).save( "punk#{id}_sepiax8.png" )
end
```


Voila!

![](i/punk0_sepia.png)
![](i/punk1_sepia.png)
![](i/punk2_sepia.png)
![](i/punk3_sepia.png)

8x

![](i/punk0_sepiax8.png)
![](i/punk1_sepiax8.png)
![](i/punk2_sepiax8.png)
![](i/punk3_sepiax8.png)



What's Next?
Let's try a blue color or a false color scheme or any other 8-bit color scheme.
Yes, you can.



## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.



