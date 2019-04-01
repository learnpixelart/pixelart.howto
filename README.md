
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

"true".to_b           #=> NoMethodError: undefined method `to_b' for String
1.to_b                #=> NoMethodError: undefined method `to_b' for Integer
Bool("true")          #=> NoMethodError: undefined method `Bool' for Kernel
Bool(1)               #=> NoMethodError: undefined method `Bool' for Kernel
...
```

Why? Why not? Discuss.



## Usage

[String](#string)  •
[Symbol](#symbol)   •
[Numeric](#numberic)   •
[Kernel](#kernel)



``` ruby
false.is_a?(Bool)     #=> true
true.is_a?(Bool)      #=> true
true.class.ancestors  #=> [TrueClass, Bool, Object, Kernel, BasicObject]
false.class.ancestors #=> [FalseClass, Bool, Object, Kernel, BasicObject]

# -or-

"true".to_b           #=> true
1.to_b                #=> true
Bool("true")          #=> true
Bool(1)               #=> true

"false".to_b          #=> false
0.to_b                #=> false
Bool("false")         #=> false
Bool(0)               #=> false
```

How about handling errors on invalid bool values when converting / parsing?

1. `to_b` always returns a bool even if the conversion / parsing fails e.g. `true` (for numbers) and `false` (for strings) on error
2. `parse_bool/to_bool` always returns `nil` if the conversion / parsing failed
3. `Bool()` always raises a `TypeError` if the conversion / parsing failed


``` ruby
"2".to_b                #=> false
"2".to_bool             #=> nil
"2".to_bool.bool?       #=> false
"2".to_bool.is_a?(Bool) #=> false
Bool("2")               #=> TypeError: cannot convert "2":String to Bool; method parse_bool expected

2.to_b                  #=> true
2.to_bool               #=> nil
2.to_bool.bool?         #=> false
2.to_bool.is_a?(Bool)   #=> false
Bool(2)                 #=> TypeError: cannot convert 2:Fixnum to Bool; method parse_bool expected
...
```

### String

- Returns `true` if string is one of these values: **t**, **true**, **on**, **y**, **yes**, **1**.
- Returns `false` if string is one of these values: **f**, **false**, **off**, **n**, **no**, **0**.

For invalid boolean string values `to_b` returns `false` by default.
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
'xxx'.to_b      #=> false
'bool'.to_b     #=> false

''.to_bool      #=> nil
' '.to_bool     #=> nil
'xxx'.to_bool   #=> nil
'bool'.to_bool  #=> nil
```

### Symbol

Same as `self.to_s.to_b` or `self.to_s.to_bool`.

``` ruby
:'1'.to_b   #=> true
:t.to_b     #=> true
:true.to_b  #=> true
:on.to_b    #=> true
:y.to_b     #=> true
:yes.to_b   #=> true

:'0'.to_b   #=> false
:f.to_b     #=> false
:false.to_b #=> false
:off.to_b   #=> false
:n.to_b     #=> false
:no.to_b    #=> false

:xxx.to_b   #=> false
:bool.to_b  #=> false

:xxx.to_b   #=> nil
:bool.to_b  #=> nil
```




### Numeric

Returns `false` if the number is zero and `true` otherwise.

#### Integer

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

#### Float

``` ruby
0.0.to_b      #=> false
1.0.to_b      #=> true
0.1.to_b      #=> true
-0.1.to_b     #=> true
-1.0.to_b     #=> true

0.0.to_bool   #=> false
1.0.to_bool   #=> true
0.1.to_bool   #=> nil
-0.1.to_bool  #=> nil
-1.0.to_bool  #=> nil
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
