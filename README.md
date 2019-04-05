
# Safe Bool Type - `Bool()`, `to_b`, `to_bool`, and More


safebool gem / library - safe bool / boolean type adds `Bool()`, `to_b`, `parse_bool` / `to_bool`, `bool?`, `false?`, `true?`, `true.is_a?(Bool)==true`, `false.is_a?(Bool)==true`, and more


* home  :: [github.com/s6ruby/safebool](https://github.com/s6ruby/safebool)
* bugs  :: [github.com/s6ruby/safebool/issues](https://github.com/s6ruby/safebool/issues)
* gem   :: [rubygems.org/gems/safebool](https://rubygems.org/gems/safebool)
* rdoc  :: [rubydoc.info/gems/safebool](http://rubydoc.info/gems/safebool)



## Why `Bool` in Ruby?


``` ruby
false.class           #=> FalseClass
true.class            #=> TrueClass
false.is_a?(Bool)     #=> NameError: uninitialized constant Bool
true.is_a?(Bool)      #=> NameError: uninitialized constant Bool
true.class.ancestors  #=> [TrueClass, Object, Kernel, BasicObject]
false.class.ancestors #=> [FalseClass, Object, Kernel, BasicObject]

# -or-

false.to_s            #=> "false"
true.to_s             #=> "true"
false.to_i            #=> NoMethodError: undefined method `to_i' for false:FalseClass
true.to_i             #=> NoMethodError: undefined method `to_i' for true:TrueClass
Integer(false)        #=> TypeError: can't convert false into Integer
Integer(true)         #=> TypeError: can't convert true into Integer

# -or-

"false".to_b          #=> NoMethodError: undefined method `to_b' for String
0.to_b                #=> NoMethodError: undefined method `to_b' for Integer
Bool("false")         #=> NoMethodError: undefined method `Bool' for Kernel
Bool(0)               #=> NoMethodError: undefined method `Bool' for Kernel

"true".to_b           #=> NoMethodError: undefined method `to_b' for String
1.to_b                #=> NoMethodError: undefined method `to_b' for Integer
Bool("true")          #=> NoMethodError: undefined method `Bool' for Kernel
Bool(1)               #=> NoMethodError: undefined method `Bool' for Kernel

...
```


**Everything is `true` except `false` and `nil`.**
Just use the bang bang (`!!`) doubled-up (logical) boolean not operator for `to_b` conversion:

``` ruby
!! false   #=> false
!! nil     #=> false

!! true    #=> true
!! "false" #=> true
!! ""      #=> true
!! 0       #=> true
!! 1       #=> true
!! []      #=> true
!! {}      #=> true
!! 0.0     #=> true
!! :false  #=> true
# ...
```

Why? Why not? Discuss.

## Intro

### What's a Bool?

In computer science, the Boolean data type is a data type that has one of two possible values (usually denoted _true_ and _false_),
intended to represent the two truth values of logic and Boolean algebra.
It is named after George Boole, who first defined an algebraic system of logic in the mid 19th century.

(Source: [Boolean data type @ Wikipedia](https://en.wikipedia.org/wiki/Boolean_data_type))



### Trivia Quiz - The States of Bool

Q: How many states has a boolean type in a (classic¹) programming language?

- [ A ] 1 - One State
- [ B ] 2 - Two States
- [ C ] 3 - Three States
- [ D ] Other. Please tell

A: In practice three, that is, `true`, `false` and
undefined (e.g. `nil`).

1: with nil-able / null-able types




## Usage

[String](#string)  •
[Symbol](#symbol)   •
[Integer](#integer)   •
[Kernel](#kernel)



``` ruby
false.is_a?(Bool)     #=> true
true.is_a?(Bool)      #=> true
true.class.ancestors  #=> [TrueClass, Bool, Object, Kernel, BasicObject]
false.class.ancestors #=> [FalseClass, Bool, Object, Kernel, BasicObject]

# -or-

false.to_i            #=> 0
true.to_i             #=> 1

# -or-

"false".to_b          #=> false
0.to_b                #=> false
Bool("false")         #=> false
Bool(0)               #=> false

"true".to_b           #=> true
1.to_b                #=> true
Bool("true")          #=> true
Bool(1)               #=> true
```


How about handling errors on invalid bool values when converting / parsing?

1. `to_b` always returns a bool even if the conversion / parsing fails e.g. `true` for invalid numbers or strings and `false` (for empty / blank strings) on error
2. `parse_bool / to_bool` always returns `nil` if the conversion / parsing fails
3. `Bool()` always raises an `ArgumentError` if the conversion / parsing fails
   and a `TypeError` if the conversion is unsupported (e.g. expected required `parse_bool` method missing / undefined)


``` ruby
"2".to_b                #=> true
"2".to_bool             #=> nil
"2".to_bool.bool?       #=> false
"2".to_bool.is_a?(Bool) #=> false
Bool("2")               #=> ArgumentError: invalid value "2":String for Bool(); parse_bool failed (returns nil)

2.to_b                  #=> true
2.to_bool               #=> nil
2.to_bool.bool?         #=> false
2.to_bool.is_a?(Bool)   #=> false
Bool(2)                 #=> ArgumentError: invalid value 2:Integer for Bool(); parse_bool failed (returns nil)

"".to_b                  #=> false
"".to_bool               #=> nil
"".to_bool.bool?         #=> false
"".to_bool.is_a?(Bool)   #=> false
Bool("")                 #=> ArgumentError: invalid value "":String for Bool(); parse_bool failed (returns nil)

# note: same for "blank" strings
"  ".to_b                #=> false
"  ".to_bool             #=> nil

...
```


### String

- Returns `true` if string is one of these values: **t**, **true**, **on**, **y**, **yes**, **1**.
- Returns `false` if string is one of these values: **f**, **false**, **off**, **n**, **no**, **0**.

For invalid boolean string values `to_b` returns `true` by default except for empty / blank strings where `to_b` returns `false`.
See the "Handling Errors" section for more options.

Note: The `Bool.parse` method ignores leading and trailing spaces and upper and lower cases e.g. ` FaLSe ` is the same as `false`.

```ruby
'1'.to_b        #=> true
't'.to_b        #=> true
'T'.to_b        #=> true
'true'.to_b     #=> true
'TRUE'.to_b     #=> true
'on'.to_b       #=> true
'ON'.to_b       #=> true
'y'.to_b        #=> true
'yes'.to_b      #=> true
'YES'.to_b      #=> true

' 1 '.to_b      #=> true
' t '.to_b      #=> true
' T '.to_b      #=> true
' true '.to_b   #=> true
' TRUE '.to_b   #=> true
' on '.to_b     #=> true
' ON '.to_b     #=> true
' y '.to_b      #=> true
'Y'.to_b        #=> true
' Y '.to_b      #=> true
' yes '.to_b    #=> true
' YES '.to_b    #=> true

'0'.to_b        #=> false
'f'.to_b        #=> false
'F'.to_b        #=> false
'false'.to_b    #=> false
'FALSE'.to_b    #=> false
'off'.to_b      #=> false
'OFF'.to_b      #=> false
'n'.to_b        #=> false
'N'.to_b        #=> false
'no'.to_b       #=> false
'NO'.to_b       #=> false

' 0 '.to_b      #=> false
' f '.to_b      #=> false
' F '.to_b      #=> false
' false '.to_b  #=> false
' FALSE '.to_b  #=> false
' off '.to_b    #=> false
' OFF '.to_b    #=> false
' n '.to_b      #=> false
' N '.to_b      #=> false
' no '.to_b     #=> false
' NO '.to_b     #=> false

''.to_b         #=> false
' '.to_b        #=> false

'xxx'.to_b      #=> true
'bool'.to_b     #=> true

''.to_bool      #=> nil
' '.to_bool     #=> nil
'xxx'.to_bool   #=> nil
'bool'.to_bool  #=> nil
```

### Symbol

Same as `self.to_s.to_b` or `self.to_s.to_bool`.

``` ruby
:'1'.to_b      #=> true
:t.to_b        #=> true
:true.to_b     #=> true
:on.to_b       #=> true
:y.to_b        #=> true
:yes.to_b      #=> true

:'0'.to_b      #=> false
:f.to_b        #=> false
:false.to_b    #=> false
:off.to_b      #=> false
:n.to_b        #=> false
:no.to_b       #=> false

:xxx.to_b      #=> true
:bool.to_b     #=> true

:xxx.to_bool   #=> nil
:bool.to_bool  #=> nil
```




### Integer

Returns `false` if the number is zero and `true` otherwise.


```ruby
0.to_b      #=> false
1.to_b      #=> true
2.to_b      #=> true
-1.to_b     #=> true
-2.to_b     #=> true

0.to_bool   #=> false
1.to_bool   #=> true

2.to_bool   #=> nil
-1.to_bool  #=> nil
-2.to_bool  #=> nil
```


### Kernel

More methods added to `Kernel` include `bool?`, `false?`, `true?`.
Example:


``` ruby
# bool? - returns true if object class is TrueClass or FalseClass, otherwise false

true.bool?    #=> true
false.bool?   #=> true
nil.bool?     #=> false

# false? - returns true if object class is FalseClass, otherwise false

false.false?  #=> true
true.false?   #=> false
nil.false?    #=> false

# true? - returns true if object class is TrueClass, otherwise false

true.true?    #=> true
false.true?   #=> false
nil.true?     #=> false
```

And some more.
See the [`safebool.rb`](https://github.com/s6ruby/safebool/blob/master/lib/safebool.rb) source.




## License

![](https://publicdomainworks.github.io/buttons/zero88x31.png)

The `safebool` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


## Questions? Comments?

Send them along to the [wwwmake forum](http://groups.google.com/group/wwwmake).
Thanks!
