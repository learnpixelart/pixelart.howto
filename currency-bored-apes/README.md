# Golden Bored Apes Art Challenge #1 Experiment -  Dotty Spotty "Currency" Golden Bored Apes Inspired by Damien Hirst's "The Currency"


See
the [**Punk Art Challenge #1**](https://old.reddit.com/r/CryptoPunksDev/comments/pttf4s/punk_art_challenge_1_10_000_dotty_spotty_currency/)
for more background
and change ~Punk~ to Golden Bored Ape :-).



Okkie. Welcome back.
Let's give it a try using
the golden ~24px~ 28px bored apes
![](i/boredape_au-3.png)  #3,
![](i/boredape_au-8.png)  #8,
![](i/boredape_au-27.png)  #27,
![](i/boredape_au-30.png)  #30.

Or in 4x:

![](i/boredape_au-3@4x.png)
![](i/boredape_au-8@4x.png)
![](i/boredape_au-27@4x.png)
![](i/boredape_au-30@4x.png)



Let's start with 10px circles -
resulting in a 28*10px = 280×280px format:

``` ruby
ape.spots( 10 )
```

![](i/boredape_au-3-spots-v1.png)
![](i/boredape_au-8-spots-v1.png)
![](i/boredape_au-27-spots-v1.png)
![](i/boredape_au-30-spots-v1.png)


Let's try adding 1:1 spacing and random circle radius
between 3px and 6px
and a random x/y-offset from the circles center by +/-1px:


``` ruby
ape.spots( 5, spacing: 5,
              center: [-1,1], radius: [3,6] )
```

![](i/boredape_au-3-spots-v2.png)
![](i/boredape_au-8-spots-v2.png)
![](i/boredape_au-27-spots-v2.png)
![](i/boredape_au-30-spots-v2.png)



What's missing?  Let's try "random" background spots
inspired by Damien Hirst's $40+ million "The Currency"
art collection.

``` ruby
BACKGROUND_SPOTS = [
 # blue-ish
 '49355E', '16437A', '096598', '4B8BBB', '9CD9DE', 'C5A7C6',
 # red-ish
 'A5282C', 'D14C37', 'CF6A71', 'DD5E36', 'DDA315', 'F3A925',
 # green-ish
 '4C7031', '95A025', '66BA8C', '316D5F',
 # gray-ish /white-ish
 'C2B6AF', 'BFC0C5', '3BC8B5',
]
```

Change the currency spot colors to your liking. The background spots
get selected randomly.
Let's try:


Let's try a 2x zoom with quadruple the pixels:

``` ruby
ape.zoom(2).spots( 5, spacing: 5,
                     center: [-1,1], radius: [3,6],
                     background: BACKGROUND_SPOTS )
```

![](i/boredape_au-3-currency-v1@2x.png)
![](i/boredape_au-8-currency-v1@2x.png)
![](i/boredape_au-27-currency-v1@2x.png)
![](i/boredape_au-30-currency-v1@2x.png)


Let's make the spots bigger
with a radius between 2px and 8px
and the offset more random -/+3px:

``` ruby
ape.zoom(2).spots( 5, spacing: 5,
                     center: [-3,3], radius: [2,8],
                     background: BACKGROUND_SPOTS )
```

![](i/boredape_au-3-currency-v2@2x.png)
![](i/boredape_au-8-currency-v2@2x.png)
![](i/boredape_au-27-currency-v2@2x.png)
![](i/boredape_au-30-currency-v2@2x.png)




## Bonus - Free High-Definition (Hi-Def) XXXL Poster-Size Quality Edition

One more thing - let's go high definition (hi-def), yes, XXXL
with poster-size quality thanks to vector graphics.
Let's try:

``` ruby
ape.zoom(2).spots_hidef( 5, spacing: 5,
                     center: [-3,3], radius: [2,8],
                     background: BACKGROUND_SPOTS )
```

High-definition (hi-def) XXXL!? Yes, it's all text in the scalable vector graphics (svg) format. For example, open up [**boredape_au-3-currency-v2@2x.svg**](https://github.com/cryptopunksnotdead/cryptopunks/raw/master/currency-bored-apes/i/boredape_au-3-currency-v2@2x.svg) in your browser and zoom in 100%, 200%, 300%, .. and so on and yes, the quality stays hi-definition (hi-def)!



## Questions? Comments?

Post them on the [24px reddit](https://old.reddit.com/r/24px). Thanks.

