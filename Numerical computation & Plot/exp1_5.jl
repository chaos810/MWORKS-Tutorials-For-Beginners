function ff5()
    print("\ec");
    print("请输入所需的误差限 (例如 1e-5): ")
    tolerance_str = readline()
  
    if isempty(tolerance_str)
      tolerance = 1e-5
      println("未输入误差限，将使用默认值: ", tolerance)
    else
      try
        tolerance = parse(Float64, tolerance_str)
        if tolerance <= 0
          println("输入的误差限必须大于 0，将使用默认值: 1e-5")
          tolerance = 1e-5
        end
      catch
        println("输入格式不正确，将使用默认误差限: 1e-5")
        tolerance = 1e-5
      end
    end
  
    approximation = 0.0
    term = 1.0
    denominator = 1
    sign = 1
    iteration = 0
  
    while abs(term) >= tolerance
      approximation += sign * term
      denominator += 2
      term = 1.0 / denominator
      sign *= -1
      iteration += 1
    end
  
    pi_approx = 4 * approximation
    println("计算完成，使用了 ", iteration, " 项。")
    println("π 的近似值为: ", pi_approx)
    println("误差限为: ", tolerance)
  end
  
  # 调用交互式函数
  ff5()
