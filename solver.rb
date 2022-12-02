class Solver 
  def factorial(n)
    return raise "invalid input you cannot enter a negative integer!" if n<0
    result = 1 
    (1..n).each { |i| result *= i } 
    result
  end
  def reverse(str)
    return '' if str.length == 0
    result = ''
    (0..str.length-1).reverse_each { |i| result += str[i] }
    result 
  end 
  def fizzbuzz(n)
    return 'fizzbuzz' if (n%3 == 0 and n%5 == 0) 
    return 'fizz' if n%3 == 0
    return 'buzz' if n%5 == 0
    return n.to_s
  end
end