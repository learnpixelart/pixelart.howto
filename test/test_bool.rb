# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_bool.rb


require 'helper'


class TestBool < MiniTest::Test

  def test_bool
    assert_equal true,  false.is_a?(Bool)
    assert_equal true,  false.false?
    assert_equal false, false.true?
    assert_equal true,  false.bool?
    assert_equal false, false.to_b

    assert_equal true,  true.is_a?(Bool)
    assert_equal true,  true.true?
    assert_equal false, true.false?
    assert_equal true,  true.bool?
    assert_equal true,  true.to_b
  end

  def test_nil
    assert_equal false, nil.to_b
    assert_equal false, Bool(nil)

    assert_equal false, nil.false?
    assert_equal false, nil.true?
    assert_equal false, nil.bool?
  end

  def test_string
    assert_equal false, "true".false?
    assert_equal false, "true".true?
    assert_equal false, "true".bool?

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
  end

  def test_symbol
    assert_equal false, :true.false?
    assert_equal false, :true.true?
    assert_equal false, :true.bool?

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
  end


  def test_integer
    assert_equal false, 1.false?
    assert_equal false, 1.true?
    assert_equal false, 1.bool?

    assert_equal false, 0.to_b
    assert_equal true,  1.to_b
    assert_equal true,  2.to_b

    assert_equal false, Bool(0)
    assert_equal true,  Bool(1)
    assert_equal true,  Bool(2)
  end
end  # class TestBool
