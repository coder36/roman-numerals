class Roman

  INT_TO_ROMAN = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
  }

  ROMAN_TO_INT = INT_TO_ROMAN.invert

  def convert n
    return int_to_roman n if n.is_a? Fixnum 
    return roman_to_int n if n.is_a? String
  end

  def roman_to_int roman_numerals
    n = 0

    roman_numerals.chars.each_with_index do |r, index|
      next2 = "#{r}#{roman_numerals[index+1]}"

      ROMAN_TO_INT.each do |numeral, i|
        if next2 == numeral && next2.length==2
          n -= ROMAN_TO_INT[ next2[0] ]
          break
        elsif r == numeral
          n += ROMAN_TO_INT[r]
          break
        end
      end

    end
    n
  end

  def int_to_roman n
    numeral = ""

    INT_TO_ROMAN.each do |i, letter|
      while n >= i
        numeral << letter
        n -= i
      end
    end

    numeral
  end

end
