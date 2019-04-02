# Notes



# More Bool / Boolean Gems / Libraries

Search rubygems with bool / boolean :-).

- gem [to_bool](https://rubygems.org/gems/to_bool), source <https://github.com/bricker/to_bool>
- gem [wannabe_bool](https://rubygems.org/gems/wannabe_bool),source <https://github.com/prodis/wannabe_bool>
- ...




# Articles

- <https://www.rubytapas.com/2019/01/08/boolean/> Why Ruby doesn't have a Boolean class
 	by Avdi Grimm, January 2019
- <https://api.rubyonrails.org/classes/ActiveModel/Type/Boolean.html>



## Discuss

- [ ] Add Built-in Float Number Conversion Too - Why? why not?

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

- [ ] Make an empty string a valid false value e.g. "".to_bool() == false  or "".to_bool() == nil -  why? why not?
  - ruby on rails ActiveModel bool type - returns nil for empty string (and not false)


## More / Misc(ellaneous)

``` ruby
class String
  def to_bool
    return true if self =~ (/^(true|t|yes|y|1)$/i)
    return false if self.empty? || self =~ (/^(false|f|no|n|0)$/i)

    raise ArgumentError.new "invalid value: #{self}"
  end
end
```

Source: <https://zaiste.net/string_to_boolean_in_ruby/>





