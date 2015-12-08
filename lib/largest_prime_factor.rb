# Enter your procedural solution here!


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


def largest_prime_factor(input)
    (1..Math.sqrt(input)).to_a.reverse.select do |x|
        if input % x == 0 && prime?(x)
            return x
        end
    end
end


