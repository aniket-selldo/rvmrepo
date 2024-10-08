CONS = 5

# define module
module Geeks
   CONS = 5

   # set global CONS to 7
   ::CONS = 7

   # set local CONS to 10
   CONS = 10
end

# displaying global CONS value
puts CONS

# displaying local "Geeks" CONS value
# using :: operator
puts Geeks::CONS

class Gfg
    def Geeks2
        puts "Dot Operator"
    end
end

# calling Geeks2 module using
# Dot(.) operator
puts Gfg.new.Geeks2
