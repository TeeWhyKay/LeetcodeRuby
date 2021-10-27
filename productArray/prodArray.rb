require 'benchmark'
require 'memory_profiler'

def bnchmark(mtd, input)
  time = Benchmark.measure {
    method(mtd).call(input)
  }
  puts time.real # or save it to logs
end

def calculate_product(arr)
  arr.map.with_index do |_, idx|
    (arr[0, idx].reduce(:*) || 1) * (arr[idx + 1, arr.length - 1].reduce(:*) || 1)
  end
end

def calculate_product2(arr)
  # your code here
  product = []
  arr.each_with_index do |el, idx|
    clone = arr.clone
    clone.delete_at(idx)
    product << clone
  end
  product.map { |el| el.reduce(:*) }
end


# define a method that takes an array of positive integers,
# and returns a new array that for each element
# contains the product of all other elements
# except the element in the original array

# an example will clarify

example_one = [1, 3, 5]

# pp calculate_product(example_one)
# pp calculate_product2(example_one)
# => [(3 * 5), (1 * 5), (1 * 3)]
# => [ 15, 5, 3 ]

big_example = (1..500).to_a
bnchmark(:calculate_product, big_example)
bnchmark(:calculate_product2, big_example)

report = MemoryProfiler.report do
  calculate_product2(big_example)
end
report.pretty_print(scale_bytes: true)

# example_two = [2, 6, 8]
# pp calculate_product(example_wo)
# => [(6 * 8), (2 * 8), (2 * 6)]
# => [ 48, 16, 12 ]

# example_three = [1,3,5,7]

# pp calculate_product(example_three)
# Constraints
# -----------
# => You Cannot use the divisor operator / or #fdiv

# Basics
# ------
# => Solve it with O(n^2) complexity

# Bonus points
# ------------
# => Can you do it in O(n) ?
