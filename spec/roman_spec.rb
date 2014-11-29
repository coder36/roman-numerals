require 'rspec'
require 'rspec/given'
require './roman'


describe Roman do

  context "roman to ints" do
    Given(:roman) { Roman.new }
    Then { roman.convert( "I" ) == 1 }
    Then { roman.convert( "II" ) == 2 }
    Then { roman.convert( "IV" ) == 4 }
    Then { roman.convert( "V" ) == 5 }
    Then { roman.convert( "VI" ) == 6 }
    Then { roman.convert( "IX" ) == 9 }
    Then { roman.convert( "X" ) == 10 }
    Then { roman.convert( "XIV" ) == 14 }
    Then { roman.convert( "XX" ) == 20 }
    Then { roman.convert( "XL" ) == 40 }
    Then { roman.convert( "L" ) == 50 }
    Then { roman.convert( "XC" ) == 90 }
    Then { roman.convert( "C" ) == 100 }
    Then { roman.convert( "CD" ) == 400 }
    Then { roman.convert( "D" ) == 500 }
    Then { roman.convert( "CM" ) == 900 }
    Then { roman.convert( "M" ) == 1000 }
    Then { roman.convert( "MMMCMXCIX" ) == 3999}

  end


  context "ints to roman" do

    Given(:roman) { Roman.new }
    Then { roman.convert( 1 ) == "I" }
    Then { roman.convert( 2 ) == "II" }
    Then { roman.convert( 3 ) == "III" }
    Then { roman.convert( 4 ) == "IV" }
    Then { roman.convert( 5 ) == "V" }
    Then { roman.convert( 6 ) == "VI" }
    Then { roman.convert( 8 ) == "VIII" }
    Then { roman.convert( 9 ) == "IX" }
    Then { roman.convert( 10 ) == "X" }
    Then { roman.convert( 14 ) == "XIV" }
    Then { roman.convert( 20 ) == "XX" }
    Then { roman.convert( 21 ) == "XXI" }
    Then { roman.convert( 25 ) == "XXV" }
    Then { roman.convert( 39 ) == "XXXIX" }
    Then { roman.convert( 40 ) == "XL" }
    Then { roman.convert( 50 ) == "L" }
    Then { roman.convert( 71 ) == "LXXI" }
    Then { roman.convert( 90 ) == "XC" }
    Then { roman.convert( 100 ) == "C" }
    Then { roman.convert( 400 ) == "CD" }
    Then { roman.convert( 500 ) == "D" }
    Then { roman.convert( 900 ) == "CM" }
    Then { roman.convert( 1000 ) == "M" }
    Then { roman.convert( 3999 ) == "MMMCMXCIX" }
  end




  end
