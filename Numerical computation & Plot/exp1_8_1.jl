using TyOptimization
using TyPlot
using TyMath

function f(x)
    x*sin(x) - log(2*x)
end

x = range(0.01, 10.0, length=10000)
y = f.(x)
plot(x, y)

root = fzero(f, [8, 10])  # 限制搜索区间
println("根: ", root)
