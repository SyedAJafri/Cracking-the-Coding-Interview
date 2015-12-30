# Permutate a string
# @param str [String]
def permutate(str)
  # Base case: If str is of size 1 return array with the given string
  return [str] if str.size == 1
  # Base case: If emtpy return empty array
  return [] if str.size == 0

  # Other wise chop 1 char off and permutate sub string
  sub_str = str[0..(str.size - 2)]
  removed_char = str[-1]

  uncomplete_permutations = permutate(sub_str)

  # Insert removed char at all positions in each uncomplete permutation
  insert_char_all(removed_char, uncomplete_permutations).to_a
end

# Insert a character at all positions for every string in a given array.
# Returning an array with unique strings.
# @param char [String]
# @param arr  [Array]
# @return     [Set]
def insert_char_all(char, arr)
  # Add the removed char to every location in the original string
  # Complete memo will contain a unique set of strings containing char
  arr.inject Set.new do |memo, str|
    str.size.each do |i|
      memo << str.clone.insert(i, char)
    end
  end
end
