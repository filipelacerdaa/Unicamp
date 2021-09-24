#===================================================================#
#                                                                   #
#   MS211 - Cálculo Numérico                                        #
#   Lista 02 - Questão 03                                           #
#   Nome: Filipe Lacerda Benevides                                  #
#   RA: 173494                                                      #
#                                                                   #
#===================================================================#


using StringLiterals


f(x) = (x+1) / x^2 - x^3 / 10


# Apply the bissection method to evaluate the approximate root of f
function bissection(f, a, b, epsilon=1e-4)
    pr"""iter \%6s("x") \%19s("f(x)")\n"""
    println("-"^40)

    iter = 0
    while b - a > epsilon
        x = 0.5 * (a + b)

        pr"\%-3d(iter) \%16.8f(x) \%16.8f(f(x))\n"

        if f(x) * f(a) < 0.0
            b = x
        else
            a = x
        end

        iter += 1
    end
end


bissection(f, 1, 2);