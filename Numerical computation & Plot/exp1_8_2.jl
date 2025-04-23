using TyOptimization
 function f(x)
    term1 = 2 * (x[3] - x[1]*x[2] - 4)^6
    term2 = 3 * (x[1]^2 - x[1]*x[2] - 10)^4
    term3 = (x[2]*x[3] - 5)^16
    return term1 + term2 + term3
end
 x0 = [0, 0, 0];
 result = fminsearch(f, x0)
 println("优化结果: x = ", result[1])
 println("目标函数值: f(x) = ", result[2])
