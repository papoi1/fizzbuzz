class FizzBuzz
  class << self
    FIZZ = "fizz"
    BUZZ = "buzz"
    FIZZ_NUMBER = 3
    BUZZ_NUMBER = 5

    def translate(number)
      return BUZZ if buzz?(number) && !fizz?(number)
      return number.to_s if non_fizzbuzz?(number)
      return FIZZ + BUZZ if fizzbuzz?(number)
      return FIZZ if fizz?(number)
    end

    private
    def non_fizzbuzz?(number)
      return (!fizz?(number) && !buzz?(number))
    end

    def fizz?(number)
      return (number % FIZZ_NUMBER == 0)
    end

    def buzz?(number)
      return (number % BUZZ_NUMBER == 0)
    end

    def fizzbuzz?(number)
      return (fizz?(number) && buzz?(number))
    end
  end
end
