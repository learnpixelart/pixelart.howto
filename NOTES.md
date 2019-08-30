# Notes



# More Bool / Boolean Gems / Libraries

Search rubygems with bool / boolean :-).

- gem [to_bool](https://rubygems.org/gems/to_bool), source <https://github.com/bricker/to_bool>
- gem [wannabe_bool](https://rubygems.org/gems/wannabe_bool), source <https://github.com/prodis/wannabe_bool>
- gem [boolean](https://rubygems.org/gems/boolean), source <https://github.com/RISCfuture/boolean> - archived (read-only)
- gem [boolean_class](https://rubygems.org/gems/boolean_class), source <https://github.com/elgalu/boolean_class>
- gem [to_boolean](https://rubygems.org/gems/to_boolean), source <https://github.com/JaniJegoroff/to_boolean>
- ...

<!-- break -->

- <https://github.com/janlelis/boolean2> 



# Articles

- <https://www.rubytapas.com/2019/01/08/boolean/> Why Ruby doesn't have a Boolean class
 	by Avdi Grimm, January 2019
- <https://api.rubyonrails.org/classes/ActiveModel/Type/Boolean.html>
- <https://stackoverflow.com/questions/3028243/check-if-ruby-object-is-a-boolean>
- <https://en.wikipedia.org/wiki/Boolean_data_type>



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


``` ruby
def Boolean(value)
    case value
    when true, 'true', 1, '1', 't' then true
    when false, 'false', nil, '', 0, '0', 'f' then false
    else
      raise ArgumentError, "invalid value for Boolean(): \"#{value.inspect}\""
    end
  end
```

Source: <https://coderwall.com/p/inziba/conversion-to-boolean-in-ruby>

``` ruby
def Boolean(b)
  return b if b.nil? || b == true || b == false
  case b
  when /^1$/, /^true$/i , /^yes$/i then true
  when /^0$/, /^false$/i , /^no$/i then false
  else
    raise ArgumentError, "Unknown conversion to boolean type from: #{b.class}, Inspect: #{b.inspect}"
  end
end
```
Source: <https://rubygems.org/gems/global_boolean>

``` ruby
def Boolean(val)
    return true if val.kind_of?(TrueClass)
    return false if val.kind_of?(FalseClass)

    if val.kind_of?(String)
      down = val.downcase
      return !!/1|true|t|yes|y/.match(down)
    end

    if val.kind_of?(Integer) || val.kind_of?(Float)
      return val != 0
    end

    false
  end
```

Source: <https://rubygems.org/gems/be_boolean>



