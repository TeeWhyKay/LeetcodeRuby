# given two input strings determine if two strings are anagrams of each other
def valid_anagram?(s, t)
  # anagrams will have the same length and frequency of chars
  return false if s.length != t.length

  # count frequency of characters in s string
  # minus away frequency of characters in t string by iterating through characters
  # a. return false if the frequency value at key of character is zero during key lookup
  # b. return false if the frequency value is negative
  # return true if a. or b. doesn't occur
  char_freq = {}
  s.split('').each do |char|
    char_freq.key?(char) ? char_freq[char] += 1 : char_freq[char] = 1
  end

  t.split('').each do |char|
    return false if !char_freq.key?(char) || char_freq[char] <= 0

    char_freq[char] -= 1
  end
  true

  # alternate shorter way
  # return false unless s.length == t.length
  # s.split("").tally == t.split("").tally
end

puts valid_anagram?('fish', 'hisf')
puts valid_anagram?('fish', 'hisfa')
puts valid_anagram?('fish', 'hisl')
puts valid_anagram?('ab', 'a')
