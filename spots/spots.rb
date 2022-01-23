require 'pixelart'



####
## little arg(ument)s helper for spots method call arguments
##   let's us "compose" args
def args( args, **kwargs )
  args = [args]   if args.is_a?( Integer )

  argsnew = []
  argsnew[0] = args[0]
  argsnew[1] = (args[1] || {}).merge( kwargs )
  argsnew
end



#####   variant 1 - spots (no space)
SPOTS        = args( 10 )                 #24*10 =   px
SPOTS_RANDOM = args( SPOTS, radius: [3,5] )


####    variant 2 - spots with ½ space
SPOTS_SPACE_MEDIUM  = args( 7, spacing: 3 )    # 24*7 + 23*3 =  px
# or with 10px and 5px  -- 24*10 + 23*5 =   px
                      # [10, { spacing: 5 }],

####    variant 3 - spots with 1/1 space
SPOTS_SPACE            = args( 5, spacing: 5 )    # 24*5 + 23*5 =   px
SPOTS_SPACE_RANDOM     = args( SPOTS_SPACE, center: [-2,2], radius: [2,5] )
SPOTS_SPACE_RANDOM_BIG = args( SPOTS_SPACE, center: [-1,1], radius: [3,6] )

#  or with 10px and 10px  -- 24*10 + 23*10 =   px
                        # [10, { spacing: 10}],
                        # [10, { spacing: 10,
                        #       center: [-2,2], radius: [5,10] }],
                        # [10, { spacing: 10,
                        #            center: [-1,1], radius: [6,12]}],
                        # ---
                        # [10, { lightness: [-0.03,0.03],
                        #        spacing: 10,
                        #          center: [-1,1], radius: [6,12]}],
                        # ---
                        # [10, { odd: true,
                        #        lightness: [-0.03,0.03],
                        #        spacing: 10,
                        #         center: [-1,1], radius: [6,12]}],


pp SPOTS                   #=> [10, {}]
pp SPOTS_RANDOM            #=> [10, {:radius=>[3, 5]}]
pp SPOTS_SPACE_MEDIUM      #=> [7, {:spacing=>3}]
pp SPOTS_SPACE_RANDOM      #=> [5, {:spacing=>5, :center=>[-2, 2], :radius=>[2, 5]}]
pp SPOTS_SPACE_RANDOM_BIG  #=> [5, {:spacing=>5, :center=>[-1, 1], :radius=>[3, 6]}]




variants = {
  'spots1'           => SPOTS,
  'spots1_(bg)'        => args( SPOTS, background: '#638596' ),
  'spots1_random'    => SPOTS_RANDOM,
  'spots1_random_(bg)' => args( SPOTS_RANDOM, background: '#638596' ),

  'spots2'         => SPOTS_SPACE_MEDIUM,
  'spots2_(bg)'    => args( SPOTS_SPACE_MEDIUM, background: '#638596' ),

  'spots3'            => SPOTS_SPACE,
  'spots3_random'     => SPOTS_SPACE_RANDOM,
  'spots3_random_big' => SPOTS_SPACE_RANDOM_BIG,

  ## with color lightness +/- variation
   'spots3_random_big_(l)' => args( SPOTS_SPACE_RANDOM_BIG,
                                         lightness: [-0.03,0.03] ),
   'spots3_random_big_(l+odd)' => args( SPOTS_SPACE_RANDOM_BIG,
                                             odd: true,
                                             lightness: [-0.03,0.03] ),
  ## with background spots
  'spots3_(bg)' => args( SPOTS_SPACE, background: '#638596' ),

  'spots3_random_(bg)' => args( SPOTS_SPACE_RANDOM, background: '#638596' ),
  'spots3_random_big_(bg)' => args( SPOTS_SPACE_RANDOM_BIG, background: '#638596' ),
  ## with color lightness +/- variation & background spots
  'spots3_random_big_(l+bg)' => args( SPOTS_SPACE_RANDOM_BIG, background: '#638596',
                                        lightness: [-0.03,0.03] ),
  'spots3_random_big_(l+odd+bg)' => args( SPOTS_SPACE_RANDOM_BIG, background: '#638596',
                                              odd: true,
                                               lightness: [-0.03,0.03] ),
}


ids = %w[
  0172
  2964
  3100
  3393
]

ids.each do |id|
   puts "==> punk #{id}"
   punk = Image.read( "./i/punk-#{id}.png" )

   variants.each do |slug, rec|
     size = rec[0]
     opts = rec[1] || {}

     puts "   #{slug} - #{size}, #{opts.inspect}"

     ## note: for deterministic pseudo-random numbers
     ##         "reset" seed befor spots call
     ##      use the punk id as seed
     srand( id.to_i(10) )

     punk_spots = punk.spots( size, **opts )
     punk_spots.save( "./i/punk-#{id}@#{slug}.png" )

     ### check for 2x (quadruple pixels) version
     if ['spots1',
         'spots1_random',
         'spots3_random',
         'spots3_random_big'].include?( slug )

        srand( id.to_i(10) )

        punk_spots = punk.zoom(2).spots( size, **opts )
        punk_spots.save( "./i/punk-#{id}@#{slug}@2x.png" )
     end
   end
end


puts "bye"
