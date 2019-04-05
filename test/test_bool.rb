# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_bool.rb


require 'helper'


class TestBool < MiniTest::Test

  def test_bool
    assert_equal true,    false.is_a?(Bool)
    assert_equal true,    false.false?
    assert_equal false,   false.true?
    assert_equal true,    false.bool?
    assert_equal false,   false.to_b
    assert_equal 0,       false.to_i
    assert_equal "false", false.to_s

    assert_equal true,   true.is_a?(Bool)
    assert_equal true,   true.true?
    assert_equal false,  true.false?
    assert_equal true,   true.bool?
    assert_equal true,   true.to_b
    assert_equal 1,      true.to_i
    assert_equal "true", true.to_s

    assert_equal false,  Bool.zero
    assert_equal false,  false.class.zero
    assert_equal false,  true.class.zero

    assert_equal true,   false.zero?
    assert_equal false,  true.zero?

    assert_equal true,   false.frozen?   ## (always) true by default
    assert_equal true,   true.frozen?    ## (always) true by default


    assert_equal false,  !! false
    assert_equal false,  !! nil

    assert_equal true,   !! true
    assert_equal true,   !! "false"
    assert_equal true,   !! ""
    assert_equal true,   !! 0
    assert_equal true,   !! 1
    assert_equal true,   !! []
    assert_equal true,   !! {}
    assert_equal true,   !! 0.0
    assert_equal true,   !! :false
  end

  def test_parse
    assert_equal false,  Bool.parse( "false" )
    assert_equal false,  Bool.parse( "f" )
    assert_equal false,  Bool.parse( "0" )

    assert_equal true,   Bool.parse( "true" )
    assert_equal true,   Bool.parse( "t" )
    assert_equal true,   Bool.parse( "1" )

    assert_equal true,   Bool.parse( "" ) == nil
    assert_equal true,   Bool.parse( "2" ) == nil
    assert_equal true,   Bool.parse( "xxx" ) == nil
  end

  def test_nil
    assert_equal false, nil.to_b
    assert_equal false, nil.to_bool
    assert_equal false, Bool(nil)

    assert_equal 0,     nil.to_i
    assert_equal "",    nil.to_s

    assert_equal true,  nil.to_bool.is_a?(Bool)

    assert_equal false, nil.false?
    assert_equal false, nil.true?
    assert_equal false, nil.bool?
  end

  def test_string
    assert_equal true, "true".to_b
    assert_equal true, "yes".to_b
    assert_equal true, "on".to_b
    assert_equal true, "t".to_b
    assert_equal true, "y".to_b
    assert_equal true, "1".to_b

    assert_equal true, "TRUE".to_b
    assert_equal true, "YES".to_b
    assert_equal true, "ON".to_b
    assert_equal true, "T".to_b
    assert_equal true, "Y".to_b

    assert_equal true, Bool("true")
    assert_equal true, Bool("yes")
    assert_equal true, Bool("on")
    assert_equal true, Bool("t")
    assert_equal true, Bool("y")
    assert_equal true, Bool("1")


    assert_equal false, "".to_b
    assert_equal false, "  ".to_b
    assert_equal true,  "2".to_b
    assert_equal true,  "xxx".to_b

    assert_equal true, "".to_bool == nil
    assert_equal true, "  ".to_bool == nil
    assert_equal true, "2".to_bool == nil
    assert_equal true, "xxx".to_bool == nil

    assert_equal false, "".to_bool.bool?
    assert_equal false, "  ".to_bool.bool?
    assert_equal false, "2".to_bool.bool?
    assert_equal false, "xxx".to_bool.bool?

    assert_equal false, "".to_bool.is_a?(Bool)
    assert_equal false, "  ".to_bool.is_a?(Bool)
    assert_equal false, "2".to_bool.is_a?(Bool)
    assert_equal false, "xxx".to_bool.is_a?(Bool)

    assert_equal false, "true".false?
    assert_equal false, "true".true?
    assert_equal false, "true".bool?
  end

  def test_symbol
    assert_equal true, :true.to_b
    assert_equal true, :yes.to_b
    assert_equal true, :on.to_b
    assert_equal true, :t.to_b
    assert_equal true, :y.to_b
    assert_equal true, :"1".to_b

    assert_equal true, Bool(:true)
    assert_equal true, Bool(:yes)
    assert_equal true, Bool(:on)
    assert_equal true, Bool(:t)
    assert_equal true, Bool(:y)
    assert_equal true, Bool(:"1")

    assert_equal false, :"  ".to_b
    assert_equal true,  :"2".to_b
    assert_equal true,  :"xxx".to_b

    assert_equal true,  :'2'.to_bool == nil
    assert_equal true,  :xxx.to_bool == nil

    assert_equal false, :'2'.to_bool.bool?
    assert_equal false, :'xxx'.to_bool.bool?

    assert_equal false, :'2'.to_bool.is_a?(Bool)
    assert_equal false, :'xxx'.to_bool.is_a?(Bool)

    assert_equal false, :true.false?
    assert_equal false, :true.true?
    assert_equal false, :true.bool?
  end


  def test_integer
    assert_equal false, 0.to_b
    assert_equal true,  1.to_b
    assert_equal true,  2.to_b

    assert_equal false, Bool(0)
    assert_equal true,  Bool(1)

    assert_equal true,  2.to_bool == nil
    assert_equal true, -1.to_bool == nil

    assert_equal false, 2.to_bool.bool?
    assert_equal false, -1.to_bool.bool?

    assert_equal false, 2.to_bool.is_a?(Bool)
    assert_equal false, -1.to_bool.is_a?(Bool)

    assert_equal false, 1.false?
    assert_equal false, 1.true?
    assert_equal false, 1.bool?

    assert_equal false, 0.false?
    assert_equal false, 0.true?
    assert_equal false, 0.bool?
  end
end  # class TestBool
