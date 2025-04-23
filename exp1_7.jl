using TyPlot
# 数据点
x = [-1, 0, 1, 2, 3, 4, 5, 6]
y = [10, 9, 7, 5, 4, 3, 0, -1]

# 最小二乘拟合（一次多项式）
A = [x ones(length(x))]
coeffs = A \ y

# 拟合曲线
fit_y = coeffs[1] .* x .+ coeffs[2]

# 绘制数据点和拟合曲线
plot(x, fit_y)
title("拟合曲线")

# 预测 x = 0.5, 2.5, 4.5, 6.5, 8.5 时的函数值
predict_x = [0.5, 2.5, 4.5, 6.5, 8.5]
predict_y = coeffs[1] .* predict_x .+ coeffs[2]

# 打印预测结果
println("预测值：")
for i in 1:length(predict_x)
    println("x = ", predict_x[i], "，y = ", predict_y[i])
end


# 定义函数 sin(x)/x
function sinc(x)
    if x == 0
        return 1.0
    else
        return sin(x) / x
    end
end

# 生成 x 值
x = range(-10, 0, length = 100)

# 计算 y 值
y = sinc.(x)

# 绘制图像
figure()
plot(x, y, label = "sin(x)/x")
title("sin/x 图像")