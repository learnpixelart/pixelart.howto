
# Safe Bool Type - `Bool()`, `to_b`, `to_bool`, and More


safebool gem / library - safe bool(ean) type adds `Bool()`, `to_b`, `to_bool`, `bool?`, `false?`, `true?`, `true.is_a?(Bool)==true`, `false.is_a?(Bool)==true`, and more


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

...
```


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

# true? - returns true is object class is TrueClass, otherwise false

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
