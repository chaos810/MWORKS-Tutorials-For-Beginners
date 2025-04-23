using TyPlot
using TyMath

# 定义函数 f(x) = x * e^(-3x)
f(x) = x .* exp.(-3 .* x)

# 定义积分区间
a = 0
b = 5

# 绘制函数曲线
x_range = a:0.1:b
y_values = f.(x_range) # 使用广播 (dot) 运算符对每个 x 值应用函数 f

println("\ec")
plot(x_range, y_values)

q, = integral(f,a,b)
println("积分结果：",q)
