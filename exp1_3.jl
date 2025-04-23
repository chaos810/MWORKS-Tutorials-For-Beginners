print("\ec")

function ff3(x)
    if x>=0 && x<=1
        y=x
    elseif x>=1 && x<=2
        y=2-x
    else
        y=0
    end
    return y
end
# 计算指定值
# f(-2)
f_minus_2 = ff3(-2)

# f(√2)
f_sqrt_2 = ff3(sqrt(2))

# f(∞)
# Julia 中可以用 Inf 表示无穷大
f_infinity = ff3(Inf)

# f(2 * sin(75°) / (1 + e^2))
# 角度转换为弧度：75° = 75 * π / 180
sin_75 = sin(75 * π / 180)
e_squared = exp(2)
arg = 2 * sin_75 / (1 + e_squared)
f_special = ff3(arg)

# 输出结果
println("f(-2) = ", f_minus_2)
println("f(√2) = ", f_sqrt_2)
println("f(∞) = ", f_infinity)
println("f(2 * sin(75°) / (1 + e^2)) = ", f_special)