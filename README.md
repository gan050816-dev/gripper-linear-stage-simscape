# 机械手爪与丝杆滑台机电联合仿真

围绕机械手爪开合和滑台直线运动两个任务，将 SolidWorks 机械装配导入 Simscape Multibody，再接入执行器、传感器与 PID 控制器，建立机械运动与控制反馈之间的联系。仓库包含两组独立模型，用于分析机构在驱动输入下的运动和响应。

## 项目做到了什么

| 对象 | 建立的系统 | 可查看的成果 |
| --- | --- | --- |
| 机械手爪 | 手爪与连杆装配、直流电机和双作用液压执行器、运动与力传感器、两组 PID 控制模块 | CAD 装配、联合仿真模型，以及保留响应曲线的历史仿真报告 |
| 丝杆滑台 | 电机驱动丝杆，将转动转换为滑台直线位移，结合位置反馈与 PID 调节 | CAD 装配、丝杆关节与滑台运动模型、参数和 MATLAB 数据文件 |

**先看仿真结果：** [机械手爪仿真数据检查器报告](models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/sdireports/New_Report.html)。报告记录了 2026-04-12 的 `Run 111: gripper`，包含内嵌信号曲线图。下载 HTML 后用浏览器打开即可查看，无需先安装 MATLAB。

这份报告保留了手爪模型的历史运行结果；两个主模型由 MATLAB R2024b 保存，最后保存日期为 2026-04-16，晚于报告日期。滑台公开内容以模型和数据为主。当前材料未提供统一的跟踪误差、超调量与调节时间统计，因此不把这些指标作为已验证成果。

## 关键设计

1. **从装配到多体模型。** 保留零件、装配体、STEP 几何、XML 导入文件和 `*_DataFile.m` 参数，使刚体、关节与坐标变换能够对应到机械结构。
2. **将驱动与机械运动连接。** 手爪模型包含电机与液压执行器；滑台通过 `Lead Screw Joint` 表达丝杆传动关系。执行器输入与关节运动在同一模型中计算。
3. **将测量结果送回控制环。** 通过运动、转矩或力传感器取得输出，经 Simulink/物理信号转换模块连接 PID、示波器与工作区记录，便于比较输入与响应。

两组模型的设计与迁移检查要点分别见[机械手爪说明](docs/gripper.md)和[丝杆滑台说明](docs/linear-stage.md)。

## 查看与复现

### 主要工程入口

| 内容 | 入口 |
| --- | --- |
| 手爪 CAD 装配 | [gripper.SLDASM](models/034%20gripper-wood-1.snapshot.1/gear/gripper.SLDASM) |
| 手爪联合仿真 | [gripper.slx 及配套数据目录](models/034%20gripper-wood-1.snapshot.1/gear/new_matlab/) |
| 滑台 CAD 与联合仿真 | [Linear_new.slx 及配套装配、数据目录](models/Liner/new/) |

查看 CAD 需要 SolidWorks 或兼容软件。运行仿真需要 MATLAB、Simulink、Simscape、Simscape Multibody 和 Simscape Electrical；手爪的液压执行器还依赖 Simscape Fluids。

1. 下载完整仓库，保留模型目录层级与配套文件。
2. 将 MATLAB 当前目录切换到对应主模型目录并打开 SLX。两个模型的 Model Workspace 仍绑定旧机器的绝对路径，需按[手爪迁移步骤](docs/gripper.md)或[滑台迁移步骤](docs/linear-stage.md)重新指定同目录的 DataFile，并执行 Reinitialize From Source；仅在基础工作区运行 DataFile 不能替代此操作。
3. 确认 STEP 引用可解析，检查关节方向、单位、执行器与传感器方向；滑台还需核对丝杆导程、质量和惯量。
4. 运行后通过模型中的 Scope 或 Simulation Data Inspector 查看输入与输出，并记录运行环境、参数和结果。

## 验证与公开范围

当前已检查 6 个 SLX 文件的压缩结构、主要模型模块和报告内容；本次整理未在 MATLAB、Simscape 或 SolidWorks 中重新运行。迁移软件版本时仍需检查库依赖、坐标系与求解器设置，历史曲线不能替代新环境下的复测。

仓库公开 CAD、仿真模型、导入数据与匿名化说明，保留部分建模阶段版本；原始个人报告未公开。当前未附加开源许可证，第三方复用权限需由仓库所有者另行确定。
