function f(sides)
    a, b, c = sort(sides)
    return a > 0 && a + b > c && length(unique(sides))
end

is_equilateral(sides) = f(sides) == 1

is_isosceles(sides) = f(sides) ∈ [1,2]

is_scalene(sides) = f(sides) == 3