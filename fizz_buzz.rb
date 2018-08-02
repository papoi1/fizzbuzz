class FizzBuzz
  class << self
    FIZZ = "fizz"
    BUZZ = "buzz"
    FIZZ_NUMBER = 3
    BUZZ_NUMBER = 5

    def translate(number)
      result = ""
      result.prepend(FIZZ) if fizz?(number)
      result << BUZZ  if buzz?(number)
      result = number.to_s if !fizz?(number) && !buzz?(number)
      return result
    end

    private
    def fizz?(number)
      divisible?(number, FIZZ_NUMBER)
    end

    def buzz?(number)
      divisible?(number, BUZZ_NUMBER)
    end

    def divisible?(number, divider)
      return (number % divider == 0)
    end
  end
end
