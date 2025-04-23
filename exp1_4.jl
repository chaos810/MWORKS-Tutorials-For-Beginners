print("\ec")

function ff4(score::Int)
    if score >= 90
        return "优"
    elseif 80 <= score < 90
        return "良"
    elseif 70 <= score < 80
        return "中"
    elseif 60 <= score < 70
        return "及格"
    else
        return "不及格"
    end
end

# 导入随机数生成模块
using Random

# 生成 10 个 100 以内的随机整数
scores = rand(0:100, 10)

# 遍历每个成绩，调用 ff4 函数并输出结果
for score in scores
    evaluation = ff4(score)
    println("成绩：", score, "，评价：", evaluation)
end