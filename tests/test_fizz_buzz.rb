require "test/unit"

require_relative "../fizz_buzz"

class TestFizzBuzz < Test::Unit::TestCase

  def test_fizz_buzz_translates_fizz_for_a_fizz_number
    fizz_number = 3

    translated = FizzBuzz.translate(fizz_number)

    assert_equal(translated, "fizz")
  end

  def test_fizz_buzz_translates_buzz_for_a_buzz_number
    buzz_number = 10

    translated = FizzBuzz.translate(buzz_number)

    assert_equal(translated, "buzz")
  end

  def test_fizz_buzz_doesnt_translate_for_a_non_fizz_buzz_number
    non_fizz_buzz_number = 7

    translated = FizzBuzz.translate(non_fizz_buzz_number)

    assert_equal(translated, non_fizz_buzz_number.to_s)
  end

  def test_fizz_buzz_translates_fizz_buzz_for_fizz_buzz_number
    fizz_buzz_number = 30

    translated = FizzBuzz.translate(fizz_buzz_number)

    assert_equal(translated, "fizzbuzz")
  end

end
