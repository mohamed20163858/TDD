class Solver
  def factorial(num)
    return raise 'invalid input you cannot enter a negative integer!' if num.negative?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def reverse(str)
    return '' if str.empty?

    result = ''
    (0..str.length - 1).reverse_each { |i| result += str[i] }
    result
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? and (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
