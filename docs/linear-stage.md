# 丝杆滑台：从电机转动到直线运动

这组模型把直流电机、丝杆和滑台放在同一个仿真系统中，通过丝杆关节建立转角与直线位移的关系，再结合位置反馈和 PID 调节分析滑台运动。公开内容包括 CAD 装配、Simscape 模型、导入参数与 MATLAB 数据文件。

## 先看系统结构

```text
目标输入 → PID → 受控电压与直流电机 → 丝杆关节 → 滑台位移
             ↑                                │
             └──────── 位置反馈 ───────────────┘
```

主要模型包含 `Lead Screw Joint`、移动副、转动副、运动与转矩传感器，以及一组连续时间 PID。当前保存的丝杆导程为 **1 mm/rev**，它决定转动与直线运动的换算；检查位置响应前，需同时核对反馈信号单位与方向。

| 主要入口 | 作用 |
| --- | --- |
| [Liner/new/Linear_Guide_test20260320.SLDASM](../models/Liner/new/Linear_Guide_test20260320.SLDASM) | 查看丝杆、滑台、导杆与支架的装配 |
| [Liner/new/Linear_new.slx](../models/Liner/new/Linear_new.slx) | 本说明对应的机电联合仿真模型 |
| [同目录 Linear_new_DataFile.m](../models/Liner/new/Linear_new_DataFile.m) | CAD 导入生成的 `smiData` 参数 |
| [同目录 XML、STEP 与 MAT 文件](../models/Liner/new/) | 几何引用、导入信息与保留的数据 |

`Liner/` 下的其他 SLX 和导入文件属于不同阶段。首次查看以 `Liner/new/Linear_new.slx` 为入口，不把其他版本的数据文件混入同一模型。

## 保存的配置与证据

主模型由 **MATLAB R2024b** 保存，最后保存日期为 **2026-04-16**，仿真配置为 `ode15s`、0–16 s。模型保留重复序列输入、Scope 和工作区输出，可用于观察目标与响应。

模型中有两处线性分析输入输出标记，并保留 `trans.mat`、`Untitled.mat`。公开材料未给出完整的频域分析步骤、工作点说明与对应图表，因此不能仅凭这些文件得出带宽或稳定裕度结论。滑台目前展示的是可检查的模型与数据，尚没有随仓库公开、可独立核对的响应性能统计。

## 在本地打开与迁移

需要 MATLAB、Simulink、Simscape、Simscape Multibody 和 Simscape Electrical。查看或编辑原始装配另需 SolidWorks 或兼容软件。

1. 下载完整仓库，在本地副本中将 MATLAB 当前目录切换到 `models/Liner/new/`，打开 `Linear_new.slx`。
2. **更新模型工作区的数据源。** 当前 SLX 仍指向原机器的 `C:\Liner\new\Linear_new_DataFile.m`。在 Model Explorer 中选择该模型的 Model Workspace，在 Properties 中保持 Data source 为 `MATLAB File`，将 File name 指向本地同目录的 `Linear_new_DataFile.m`，执行 **Reinitialize From Source**。
3. 确认模型工作区载入 `smiData`，更新模型并检查 STEP 引用。仅在基础工作区运行数据文件，不能替代模型工作区的数据源迁移。
4. 核对丝杆导程、关节轴线、质量、惯量、单位和反馈方向，再运行保存的输入工况。通过 Scope 检查目标、位移和转矩等信号，并记录使用的参数与环境。

数据源操作依据：[MathWorks — Specify Source for Data in Model Workspace](https://www.mathworks.com/help/simulink/ug/specify-source-for-data-in-model-workspace.html)。

## 复核顺序

静态检查确认主模型的 6 处 File Solid 外部几何引用均能在同目录找到；本次整理未完成 MATLAB 求解或 CAD 装配打开验证。

若模型不能更新或运行，先排查数据源路径、库依赖和几何引用，再检查单位、约束与初始状态，最后依据具体诊断调整求解器设置并记录变更。不要仅为消除报错加入延迟或其他动态环节；这会改变用于分析的系统，需要另行说明与验证。

[返回项目总览](../README.md) · [查看机械手爪](gripper.md)
