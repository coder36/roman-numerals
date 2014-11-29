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

  def convert n
    return int_to_roman n if n.is_a? Fixnum 
    return roman_to_int n if n.is_a? String
  end

  def roman_to_int roman_numerals
    n = 0

    roman_numerals.chars.each_with_index do |r, index|

      next2 = "#{r}#{roman_numerals[index+1]}"

      if r == "D"
        n += 500
      end

      if next2 == "CD"
        n -= 100
      elsif r == "C"
        n += 100
      end

      if r == "L"
        n += 50
      end

      if r == "V"
        n += 5
      end

      if next2 == "XL"
        n -= 10
      elsif next2 == "XC"
        n -= 10
      elsif r == "X"
        n += 10
      end


      if next2 == "IX"
        n -= 1
      elsif next2 == "IV"
        n -= 1
      elsif r == "I"
        n += 1
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
