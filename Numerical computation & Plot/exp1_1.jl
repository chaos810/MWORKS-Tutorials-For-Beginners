using Random
using LinearAlgebra

print("\ec")

#第一问

# 指定整数的最小值和最大值（包含）
min_val = -10
max_val = 10
# 使用 rand 函数生成随机整数矩阵
A = rand(min_val:max_val, 5, 5)
B = rand(min_val:max_val, 5, 3)
println("A矩阵：",A)
println("B矩阵：",B)

#第二问

C=A*B
# 提取 C 的右下角 3x2 矩阵并赋值给 D
D = C[3:5, 2:3]
println("C矩阵：",C)
println("D矩阵：",D)

#第三问
exp_A=exp(A)
println("A矩阵的指数函数",exp_A)

#第四问
#实现查找的函数
function find_elements(B::Matrix{<:Real})
    results = [] # 创建一个空数组来存储结果

    for i in 1:5
        for j in 1:3
            if -4 <= B[i, j] <= 4 # 检查元素是否在指定范围内
                push!(results, (B[i, j], (i, j))) # 将元素及其位置作为一个元组（tuple）添加到结果数组中
            end
        end
    end

    return results
end

# 查找元素
found_elements = find_elements(B)

# 打印结果
println("B中绝对值不大于4的元素:")
for (element, position) in found_elements  #元组解构
    println("元素: ", element, ", 位置: ", position)
end

#第五问
function find_max_min(A::Matrix{Int})
    max_val = A[1, 1]
    min_val = A[1, 1]
    max_pos = (1, 1)
    min_pos = (1, 1)    #初始化

    for i in 1:5
        for j in 1:5
            if A[i, j] > max_val
                max_val = A[i, j]
                max_pos = (i, j)
            end
            if A[i, j] < min_val
                min_val = A[i, j]
                min_pos = (i, j)
            end
        end
    end

    return max_val, max_pos, min_val, min_pos
end

# 查找最大值和最小值
max_val, max_pos, min_val, min_pos = find_max_min(A)

# 打印结果
println("矩阵 A的最大最小值与位置:")
println(A)
println("最大值: ", max_val, ", 位置: ", max_pos)
println("最小值: ", min_val, ", 位置: ", min_pos)

#第六问
function row_stats(A::Matrix{Int})
    means = zeros(Float64, 5)
    stds = zeros(Float64, 5)
    medians = zeros(Float64, 5)

    for i in 1:5
        row = A[i, :]
        means[i] = mean(row)
        stds[i] = std(row)
        medians[i] = median(row)
    end

    return means, stds, medians
end
# 计算各行向量的均值、标准差和中位数
means, stds, medians = row_stats(A)

# 打印结果
println("矩阵 A:")
println("\n各行均值:")
println(means)
println("\n各行标准差:")
println(stds)
println("\n各行中位数:")
println(medians)

#第七问
det_A=det(A)
println("矩阵 A 的行列式：", det_A)
eigen_A = eigen(A)
println("矩阵 A 的特征根：", eigen_A.values)
println("矩阵 A 的特征向量：", eigen_A.vectors)
if det_A != 0
    inv_A = inv(A)
    println("矩阵 A 可逆，其逆矩阵为：", inv_A)
else
    println("矩阵 A 不可逆。")
end
x = A \ B
println("方程 Ax = B 的解为：", x)

#第八问
LU_A = lu(A)
println("矩阵 A 的 LU 分解：")
println("L：", LU_A.L)
println("U：", LU_A.U)
println("P：", LU_A.P)
SVD_A = svd(A)
println("矩阵 A 的奇异值分解：")
println("U：", SVD_A.U)
println("S：", SVD_A.S)
println("Vt：", SVD_A.Vt)
