# 机械手爪：装配、执行器与反馈控制

这组模型围绕机械手爪运动，将手爪、连杆和支撑件的 CAD 装配接入 Simscape 多体模型，再加入电机、液压执行器和反馈控制。公开成果包括机械装配、机电联合仿真模型，以及一份保留信号曲线的历史报告。

## 先看结构与结果

- 结构入口：[gripper.SLDASM](../models/034%20gripper-wood-1.snapshot.1/gear/gripper.SLDASM)。查看手爪、连杆及执行机构的装配关系。
- 结果入口：[仿真数据检查器报告](../models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/sdireports/New_Report.html)。下载 HTML 后用浏览器打开，查看 `Run 111: gripper` 的内嵌曲线。

报告生成于 **2026-04-12**，本页主要 SLX 模型最后保存于 **2026-04-16**。它证明保留了历史仿真记录，不能直接视为后来模型版本的回归结果。图例使用 `Mux`、`Sine Wave` 等信号名，解读具体物理量时需回到对应模型核对通道与单位；本文不从截图推算误差、超调或稳定时间。

## 模型如何组织

机械部分由刚体、转动副、移动副及坐标变换组成。驱动部分包含直流电机和双作用液压执行器，模型使用两组连续时间 PID 模块，并通过运动、转矩和力传感器观测状态。物理信号与 Simulink 信号通过转换模块连接，Scope 和工作区输出用于查看响应。

| 主要入口 | 作用 |
| --- | --- |
| [gear/new_matlab/gripper.slx](../models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/gripper.slx) | 本说明对应的联合仿真模型 |
| [同目录 gripper_DataFile.m](../models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/gripper_DataFile.m) | CAD 导入生成的 `smiData`，记录刚体、关节与坐标变换参数 |
| [同目录 gripper.xml 与 STEP 文件](../models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/) | 导入信息与外部几何 |

`gear/matlab/gripper.slx` 是另一阶段的同名模型。首次查看以表中的 `gear/new_matlab/` 为入口，使用同目录的数据和几何文件，避免混用版本。

主模型保存版本为 **MATLAB R2024b**；保存的仿真配置为 `ode15s`、0–12 s。这些是文件中的配置，不代表本次已完成求解。

## 在本地打开与迁移

需要 MATLAB、Simulink、Simscape、Simscape Multibody、Simscape Electrical 和 Simscape Fluids。查看或编辑原始装配另需 SolidWorks 或兼容软件。

1. 下载完整仓库，在本地副本中将 MATLAB 当前目录切换到 `models/034 gripper-wood-1.snapshot.1/gear/new_matlab/`，打开 `gripper.slx`。
2. **更新模型工作区的数据源。** 当前 SLX 仍记录原机器的 `C:\034 gripper-wood-1.snapshot.1\gear\new_matlab\gripper_DataFile.m`。在 Model Explorer 中选择该模型的 Model Workspace，在 Properties 中保持 Data source 为 `MATLAB File`，将 File name 指向本地同目录的 `gripper_DataFile.m`，执行 **Reinitialize From Source**。
3. 确认模型工作区载入 `smiData`，再更新模型，检查 STEP 几何、工具箱模块与关节是否能解析。仅在基础工作区运行 DataFile，不会替换模型工作区中保存的数据源路径。
4. 检查坐标系、机械与控制端单位、执行器和传感器方向，然后运行模型。保存运行环境、输入设置和各观测信号的名称与单位，再进行响应比较。

数据源操作依据：[MathWorks — Specify Source for Data in Model Workspace](https://www.mathworks.com/help/simulink/ug/specify-source-for-data-in-model-workspace.html)。

## 当前可以核对到哪一步

静态检查确认主模型的 20 处 File Solid 外部几何引用均能在同目录找到，执行器、控制与记录模块保留在 SLX 中。本次文档整理未在 MATLAB 或 SolidWorks 中打开求解；新环境下仍需通过模型更新、仿真运行和信号检查确认实际行为。

[返回项目总览](../README.md) · [继续查看丝杆滑台](linear-stage.md)
