def range_lowercase?(char)
  char.ord >= 97 && char.ord <= 122
end

def range_uppercase?(char)
  char.ord >= 65 && char.ord <= 90
end

def get_shifted_ascii(array, char, num)
  array[(array.index(char.ord) + num) % 26]
end

def caesar_cipher(str, num)
  alphabet_uppercase_ascii = (65..90).to_a
  alphabet_lowercase_ascii = (97..122).to_a

  str = str.split('')

  str = str.map do |char|
    if range_lowercase?(char)
      get_shifted_ascii(alphabet_lowercase_ascii, char, num).chr
    elsif range_uppercase?(char)
      get_shifted_ascii(alphabet_uppercase_ascii, char, num).chr
    else
      char
    end
  end.join('')
end

p caesar_cipher('What a string!', 5)
