using Polynomials
using TyPlot

print("\ec")

# 定义多项式 F1(s) 和 F2(s)
F1_coeffs = [7, 4, -5, 3, 1]  # 常数项在前，按升幂排列
F1 = Polynomial(F1_coeffs)

F2_coeffs = [9, 3, 2]
F2 = Polynomial(F2_coeffs)

println("F1(s) = $F1")
println("F2(s) = $F2")

# (1) 计算多项式的加法、减法、乘法和除法
println("\n(1) 多项式运算:")
sum_poly = F1 + F2
println("F1(s) + F2(s) = $sum_poly")

diff_poly = F1 - F2
println("F1(s) - F2(s) = $diff_poly")

prod_poly = F1 * F2
println("F1(s) * F2(s) = $prod_poly")

div_poly, rem_poly = divrem(F1, F2)
println("F1(s) / F2(s) = $div_poly (商)")
println("F1(s) % F2(s) = $rem_poly (余数)")

# (2) 求方程 F1(s) = 0 的根
println("\n(2) 方程 F1(s) = 0 的根:")
roots_F1 = Polynomials.roots(F1)
println("F1(s) 的根为: $roots_F1")

# (3) 求 s = 1:10 时多项式 F1(s) 的值
println("\n(3) 当 s = 1:10 时 F1(s) 的值:")
s_values = 1:10
F1_values = F1.(s_values) # 使用广播对每个 s 值计算 F1(s)
for i in 1:length(s_values)
    println("F1($(s_values[i])) = $(F1_values[i])")
end

#(4) 在同一窗口绘制 F1(s) 和 F2(s) 的曲线
figure();
x = LinRange(-10,10,200);
y1 = F1.(x);
y2 = F2.(x);
fg1 = plot(x, y1,"black");
hold("on");
fg2 = plot(x, y2,"g");
plt_set(y2, "linewidth", 12);
hold("off");

# (5) 建立两个绘图子窗口，分别绘制 F1(s) 和 F1'(s) 的图形
F1_derivative = derivative(F1);
figure();
x = LinRange(-10,10,200);
y3 = F1.(x);
plot(x, y3);
title("F1(s)的曲线")
xlabel("s");
figure();
x = LinRange(-10,10,200);
y4 = F1_derivative.(x);
plot(x, y4);
title("F1'(s)的曲线")
xlabel("s");
