# Enter your object-oriented solution here!

class LargestPrimeFactor
    def initialize(input)
        @num = input
    end
    def prime?(num)
        if num == 1 || num == 0
            return false
        elsif num == 2
            return true
        else
            factors = (2..Math.sqrt(num)).to_a.detect {|x| num % x == 0}
            if factors == nil
                return true
            else
                return false
            end
        end
    end
    def number
        (1..Math.sqrt(@num)).to_a.reverse.select do |x|
            if @num % x == 0 && prime?(x)
                return x
            end
        end
    end
end