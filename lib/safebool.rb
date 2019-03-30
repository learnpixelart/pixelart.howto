# encoding: utf-8

require 'pp'

## our own code
require 'safebool/version'    # note: let version always go first


module Bool
  def self.zero() false; end   ## note: false.frozen? == true  by default

  def to_b()      self; end
  def to_bool()   self; end
end # module Bool


class FalseClass
  include Bool     ## "hack" - enables false.is_a?(Bool)

  def zero?() true; end
end

class TrueClass
  include Bool    ## "hack" - enables true.is_a?(Bool)

  def zero?() false; end
end






module Kernel

  ######
  ## Returns true if object class is TrueClass or FalseClass, otherwise false.
  ##
  ## true.bool?   #=> true
  ## false.bool?  #=> true
  ## nil.bool?    #=> false
  def bool?() self.class == TrueClass || self.class == FalseClass; end  ## todo/discuss: use "shortcut" self == true || self == false - why? why not?

  #########
  ## Returns true if object class is FalseClass, otherwise false.
  ##
  ## false.false?  #=> true
  ## true.false?   #=> false
  ## nil.false?    #=> false
  def false?() self.class == FalseClass; end  ## todo/discuss: use "shortcut" self == false - why? why not?

  ############
  ## Returns true is object class is TrueClass, otherwise false.
  ##
  ## true.true?   #=> true
  ## false.true?  #=> false
  ## nil.true?    #=> false
  def true?() self.class == TrueClass; end    ## todo/discuss: use "shortcut" self == true - why? why not?


  #####
  #   default "explicit" conversion to bool for all objects
  def to_b() self ? true : false; end


  ### "global" conversion function / method
  def Bool( o )
    ## todo/discuss: check convention
    ##   only (explicit) convert if to_bool present - why? why not?
    ##    - check to_int/to_str/etc.
    if o.respond_to?( :to_bool )
      o.to_bool
    elsif o.respond_to?( :to_b )
      o.to_b
    else
      raise TypeError.new( "cannot convert >#{o.class.inspect}< to Bool; method to_bool or to_b expected")
    end
  end
end




class String
  def to_b
    case self.downcase.strip
    when 'true', 'yes', 'on', 't', 'y', '1'
      return true
    ## when 'nil', 'null'   # todo/discuss - add why? why not?
    ##  return nil
    else
      return false
    end
  end
  alias_method :to_bool, :to_b
end


class Symbol
  def to_b() to_s.to_b; end
  alias_method :to_bool, :to_b
end

class Numeric
  def to_b() self == 0 ? false : true; end
  alias_method :to_bool, :to_b
end




puts SaferBool.banner    ## say hello
