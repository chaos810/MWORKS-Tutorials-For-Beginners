MWORKS建模用到的主要有两个软件，Syslab和Sysplorer，就我目前的认识而言，前者类似MATLAB，后者类似Simulink。Syslab使用Julia语言，兼容python、M（MWORKS建模用到的主要有两个软件，Syslab和Sysplorer，就我目前的认识而言，前者类似MATLAB，后者类似Simulink。Syslab使用Julia语言，兼容python、M）；Sysplorer则基于modelica。

本节内容主要包括使用Syslab进行数值计算与绘图。

本来打算做一些讲解的，但我精力十分有限，因此只发一些课程作业的案例。

这些题目应该是我的课程老师或该课程组其他老师（又或者是哪位苦逼研究生）命制的，在此向ta致以敬意和感谢。为了尽可能减少答案外泄给以后本课程的教学带来的干扰，本专栏及对应代码内容禁止一切形式的转载，尤其是向墙内的转载。（代码发在GitHub而未在中文互联网发布，就是出于此考量）

**注意事项**
Syslab对Julia的一些包不支持。例如，绘图须使用TyPlot包，不能使用plot，也不能简单通过指令安装使用plot包。

示例代码中，从控制台读取键盘输入的功能会出现问题，比如可能要多按一两下回车再键入所需数据。

以下是各程序实现的功能。
![image](https://github.com/user-attachments/assets/f027cc97-74ee-48d3-ab65-be5f4e11427b)
![image](https://github.com/user-attachments/assets/4fc46211-8e30-4101-872c-d0c0f880fa32)
![image](https://github.com/user-attachments/assets/18e2ce28-44ed-41ed-ad10-0fddb4a5c25e)
![image](https://github.com/user-attachments/assets/b34352d3-24ca-4175-a10b-5e09eaa9e618)
![image](https://github.com/user-attachments/assets/530467a1-b58c-4c18-afbc-3346a35379cf)
