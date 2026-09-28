# 机械手爪与丝杆滑台 Simscape 模型

## 项目简介

本仓库整理了两组机电系统建模与联合仿真资料：机械手爪和丝杆驱动直线滑台。内容覆盖 SolidWorks 装配体、STEP 中间模型、Simscape Multibody 导入数据、Simulink 模型及相关 MATLAB 数据文件。

## 主要内容

- 机械手爪的三维装配、Simscape 导入数据与控制模型。
- 丝杆滑台的机械模型、运动控制模型与数据文件。

## 目录结构

- `models/034 gripper-wood-1.snapshot.1/`：机械手爪的零件、装配体和多组仿真模型。
- `models/Liner/`：丝杆直线滑台的机械模型、控制模型与导入数据。
- `models/文件路径说明.txt`：两个主要 Simscape 模型的相对路径。
- `docs/`：根据原工程报告整理的技术概述，不含姓名、学号等个人信息。

## 使用方法

1. 在 SolidWorks 中检查对应装配体和零件引用是否完整。
2. 在 MATLAB/Simulink 中打开 `gripper.slx` 或 `Linear_new.slx`。
3. 确认模型目录中的 `*_DataFile.m`、XML 和 STEP 文件均可被 MATLAB 找到。
4. 根据本机 MATLAB/Simscape 版本重新生成缓存，不要提交 `slprj` 和 `.slxc`。

## 环境依赖

- MATLAB / Simulink
- Simscape Multibody
- SolidWorks（查看或继续编辑原始机械模型时需要）

不同版本的 CAD 与 MATLAB 可能触发模型升级提示。建议先保留副本，再保存升级后的模型。

## 验证状态

6 个 SLX 文件的压缩结构检查通过；当前环境未完成 MATLAB、Simscape 与 SolidWorks 联合打开验证。

## 已知限制

模型可能依赖特定版本的 CAD 导入接口和 Simscape 数据文件，升级后需要重新检查关节、坐标系和求解器设置。

## 隐私与公开范围

公开副本保留工程模型与匿名化技术说明，不包含姓名、学号和原始个人报告。

## 许可证

当前未附加开源许可证。公开仓库可用于作品展示，但第三方复用权限需由仓库所有者另行确定。
