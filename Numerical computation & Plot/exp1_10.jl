using DifferentialEquations
using TyPlot

# 定义微分方程 (in-place 形式)
function f!(du, u, p, t)
    du[1] = 1 + u[1]^2
end

# 定义初始条件和时间范围
tspan = (0.0, 0.785)
u0 = [1.0]
p = [] # 没有参数，可以为空

# 使用 ODEProblem 定义问题
prob = ODEProblem(f!, u0, tspan, p)

# 使用四阶龙格-库塔方法求解
sol = solve(prob, RK4(), dt=0.01) # 设置步长 dt=0.01

# 提取数值解的时间点和解的值
t_numerical = sol.t
y_numerical = [u[1] for u in sol.u]

# 3. 绘制精确解和数值解的曲线

# 生成精确解的时间点
t_exact = 0:0.001:0.7
y_exact = tan.(t_exact .+ pi/4)

# 4. 绘制数值解与精确解的误差曲线

# 在数值解的时间点上计算精确解的值
y_exact_at_numerical_t = tan.(t_numerical .+ pi/4)

# 计算误差
error = abs.(y_numerical .- y_exact_at_numerical_t)

plot(t_exact, y_exact,"g")
hold("on")
plot(t_numerical, y_numerical,"r")
plot(t_numerical, error,"b")
hold("off")
legend(["精确解","数值解","误差"])
