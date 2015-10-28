class Fraction
    attr_reader :num, :denom
    
    def initialize(n,d)
        x = gcd(n,d)
        @num = n / x
        @denom = d / x
        
    end
    
    def to_s
        "#{num}/#{denom}"
    end
    
    def + (other)
        z=mcm(@denom, other.denom)
        x=@num*z/@denom
        y=other.num*z/other.denom
        Fraction.new(x+y,z)
    end
    
    def -(other)
        z=mcm(@denom, other.denom)
        x=@num*z/@denom
        y=other.num*z/other.denom
        Fraction.new(x-y,z)
    end
    
    def *(other)
        Fraction.new(@num*other.num,@denom*other.denom)
    end

    def /(other)
        Fraction.new(@num*other.denom,@denom*other.num)
    end

    def gcd(u,v)
        u, v = u.abs, v.abs
        while v != 0
            u, v = v, u % v
        end
    u
    end

    def mcm(x,y)
        z = x/gcd(x,y) * y
	end

end
