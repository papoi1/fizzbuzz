class NonFizzBuzz
  class << self
    FIZZ_NUMBER = 3
    BUZZ_NUMBER = 5
    def match?(number)
      return !fizz?(number) && !buzz?(number)
    end

    def action(number, result)
      result << number.to_s
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

class Buzz
  class << self
    BUZZ_NUMBER = 5
    BUZZ = "buzz"

    def match?(number)
      return divisible?(number, BUZZ_NUMBER)
    end

    def action(_, result)
      result << BUZZ
    end

    private

    def divisible?(number, divider)
      return (number % divider == 0)
    end
  end
end

class Fizz
  class << self

    FIZZ = "fizz"
    FIZZ_NUMBER = 3

    def match?(number)
      return divisible?(number, FIZZ_NUMBER)
    end

    def action(_, result)
      result.prepend(FIZZ)
    end

    private

    def divisible?(number, divider)
      return (number % divider == 0)
    end
  end
end


class FizzBuzz
  class << self
    STRATEGIES = [Fizz, Buzz, NonFizzBuzz]
    def translate(number)
      result = ""
      STRATEGIES.each do |strategy|
        strategy.action(number, result) if strategy.match?(number)
      end
      return result
    end
  end
end
