# encoding: utf-8

require 'pp'

## our own code
require 'safebool/version'    # note: let version always go first


module Bool

  TRUE_VALUES =  ['true', 'yes', 'on', 't', 'y', '1']
  FALSE_VALUES = ['false', 'no', 'off', 'f', 'n', '0']

  def self.parse( o )
    if o.is_a? String
      str = o
    else  ## try "coerce" to string
      str = o.to_str
    end

    case str.downcase.strip
    when *TRUE_VALUES
      true
    when *FALSE_VALUES
      false
    else
      nil   ## note: returns nil if cannot convert to true or false
    end
  end


  def self.convert( o )   ## used by "global" Bool( o ) kernel conversion method
    value = if o.respond_to?( :to_bool )
              o.to_bool     # returns true/false/nil
            elsif o.respond_to?( :parse_bool )  ## check parse_bool alias
              o.parse_bool  # returns true/false/nil
            else
              nil
            end

    if value.nil?
      raise TypeError.new( "cannot convert >#{o.inspect}< of type >#{o.class.name}< to Bool; method parse_bool/to_bool expected")
    else
      value
    end
  end

  def self.zero() false; end   ## note: false.frozen? == true by default


  def to_b()       self; end
  def parse_bool() self; end
  alias_method :to_bool, :parse_bool
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
  ## Returns true if object class is TrueClass, otherwise false.
  ##
  ## true.true?   #=> true
  ## false.true?  #=> false
  ## nil.true?    #=> false
  def true?() self.class == TrueClass; end    ## todo/discuss: use "shortcut" self == true - why? why not?


  #####
  #   default "explicit" conversion to bool for all objects
  def to_b() self ? true : false; end


  ### "global" conversion function / method
  def Bool( o ) Bool.convert( o ); end
end



class NilClass
  def to_b() false; end
  def parse_bool() false; end
  alias_method :to_bool, :parse_bool
end

class String
  def to_b
    value = parse_bool()
    value.nil? ? false : value   ## note return false for all undefined / unknown string values
  end
  def parse_bool() Bool.parse( self ); end
  alias_method :to_bool, :parse_bool
end

class Symbol
  def to_b() to_s.to_b; end
  def parse_bool() to_s.parse_bool(); end
  alias_method :to_bool, :parse_bool
end

class Numeric
  def to_b()
    value = parse_bool()
    value.nil? ? true : value   ## note return **true** for all undefined / unknown number/numeric values
  end
  def parse_bool()
    if self == 0
      false
    elsif self == 1
      true
    else
      nil  ## note: returns nil if cannot convert to true or false
    end
  end
  alias_method :to_bool, :parse_bool
end




puts SaferBool.banner    ## say hello
