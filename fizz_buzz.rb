class FizzBuzz
  class << self
    FIZZ = "fizz"
    BUZZ = "buzz"
    FIZZ_NUMBER = 3
    BUZZ_NUMBER = 5

    def translate(number)
      result = ""
      result = FIZZ if divisible?(number, FIZZ_NUMBER)
      result = result + BUZZ if divisible?(number, BUZZ_NUMBER)
      result = number.to_s if result == ""
      return result
    end

    private

    def divisible?(number, divider)
      return (number % divider == 0)
    end
  end
end
