require 'lib/fraction'
require 'test/unit'

class TestFraction < Test::Unit::TestCase
    def setup
        @fraction1 = Fraction.new(2,5)
        @fraction2 = Fraction.new(1,3)
    end
    
    def test_simple
        assert_equal("2/5",@fraction1.to_s)
        assert_equal("1/3",@fraction2.to_s)
    end
    
    def test_suma
        assert_equal("11/15",(@fraction1 + @fraction2).to_s)
    end
    
    def test_resta
        assert_equal("1/15",(@fraction1 - @fraction2).to_s)
        assert_equal("-1/15",(@fraction2 - @fraction1).to_s)
    end
    
end