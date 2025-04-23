function ff6_1(n::Int)
    if n < 0
        return BigFloat(0)
    elseif n > 100
        return BigFloat(-1)
    else
        sum = BigFloat(0)
        for i in 1:n
            sum += factorial(BigInt(2i))
        end
        return sum  # 直接返回 BigFloat
    end
end

function ff6_2(n::Int)
    if n < 0
        return "0"
    elseif n > 500
        return "-1"
    else
        sum = BigInt(0)
        current_fact = BigInt(1)  # 用于递推计算 (2i)!
        for i in 1:n
            if i == 1
                current_fact = factorial(BigInt(2))  # 2!
            else
                # 递推计算 (2i)! = (2i-2)! * (2i-1) * 2i
                current_fact *= (2i - 1) * 2i
            end
            sum += current_fact
        end
        return string(sum)
    end
end

# 从控制台读取输入并处理
print("\ec")
print("请输入整数 n: ")
input = readline()
try
    n = parse(Int, input)
    println("ff6_1 的结果: ", ff6_1(n))
    println("ff6_2 的结果: ", ff6_2(n))
catch e
    println("输入无效，请确保输入的是一个整数。")
end