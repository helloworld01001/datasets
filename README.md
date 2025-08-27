中文 | [English](https://github.com/helloworld01001/datasets/README_en.md)

<p align="center">
  <img src="https://img.shields.io/badge/Datasets-Open%20Index-4CAF50?style=for-the-badge" alt="Open Datasets Index">
  <img src="https://img.shields.io/badge/PRs-Welcome-blue?style=for-the-badge" alt="PRs Welcome">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" alt="Status">
  <img src="https://img.shields.io/badge/Language-中文-informational?style=for-the-badge" alt="Language">
  
</p>

# 全领域开放数据集

> 建立一个覆盖多学科的高质量数据集索引平台，帮助科研人员与工程师快速定位合适数据源。

本项目旨在收集、整理与索引各领域的公开数据集，
覆盖计算机视觉、自然语言处理、语音、多模态、遥感、医疗等方向。

---
 
## 目录

- [计算机视觉](#计算机视觉)
- [自然语言处理](#自然语言处理)
- [语音与音频](#语音与音频)
- [多模态](#多模态)
- [遥感与地理信息](#遥感与地理信息)
- [医疗与生物信息](#医疗与生物信息)
- [其他方向](#其他方向)

---

## 背景与目标

我们希望通过这个项目：
- 提供每个数据集的**基本信息**（数据规模、任务类型、格式等）
- 提供**下载方式**与**许可证信息**
- 提供**数据来源/主页**与**论文引用**（如有）
- 帮助科研人员、工程师、学生与数据爱好者快速找到合适的数据集

## 我们提供什么

- **标准化索引**：统一记录字段，便于横向比较与筛选
- **可靠链接**：尽量追溯至官方主页或权威镜像
- **简明描述**：核心要点一目了然，避免信息过载
- **可持续维护**：欢迎社区提交修订与新条目

## 计算机视觉

- 任务：分类、检测、分割、关键点、跟踪、3D/点云、视频理解
- 常见格式：COCO、Pascal VOC、YOLO、KITTI、Cityscapes 等
- 示例关键词：classification, detection, segmentation, tracking, 3d, video

## 自然语言处理

- 任务：文本分类、生成、翻译、检索、问答、信息抽取、对话
- 常见格式：JSON/JSONL、TSV、HuggingFace Datasets 格式
- 示例关键词：nli, qa, mt, retrieval, summarization, ner, dialogue

## 语音与音频

- 任务：ASR 识别、TTS 合成、说话人识别、事件检测、声学场景
- 常见格式：WAV/FLAC + 对齐/转写，Kaldi/ESPnet/HF 生态
- 示例关键词：asr, tts, speaker, sed, audio tagging

## 多模态

- 任务：图文匹配、VQA、跨模态检索、视频-文本理解、多模态对话
- 常见格式：图像/视频 + 文本标注，WebDataset/TFRecord/HF
- 示例关键词：vqa, retrieval, itm, caption, video-text

## 遥感与地理信息

- 任务：影像分类、变化检测、目标检测/分割、地表覆盖分类
- 常见格式：GeoTIFF、RGB/NIR 多光谱，矢量标注（shp/geojson）
- 示例关键词：remote sensing, change detection, land cover

## 医疗与生物信息

- 任务：医学影像分割/检测/分类、病理图像、电子病历 NLP、基因组
- 常见格式：DICOM、NIfTI、WSI、结构化文本
- 示例关键词：mri, ct, pathology, ehr, genomics

## 其他方向

- 任务：推荐系统、图学习、时间序列、金融风控、强化学习等
- 常见格式：CSV/Parquet/JSON、图数据（edge/node）、序列日志
- 示例关键词：recsys, graph, time series, fraud, rl

## 快速开始

1. 浏览本仓库的索引页与目录，查找感兴趣的任务与领域
2. 打开相应数据集条目，查看规模、格式、下载与许可证
3. 根据许可证条款合规地下载与使用数据集

提示：也可以使用仓库搜索功能以关键词（如“segmentation”“遥感”）快速定位。

## 贡献指南

非常欢迎社区贡献！你可以：

- 提交新数据集条目（新增或补充信息）
- 修正失效链接或补充更权威的来源
- 优化字段描述与分类标签

提交时请尽量包含以下字段：

- 名称 / 缩写
- 任务类型（例如：分类、检测、分割、生成、ASR、MT、VQA…）
- 数据规模（样本数、时长、模态）
- 数据格式与标注说明
- 官方主页 / 论文 / 镜像链接
- 下载方式与校验信息（如有）
- 许可证（License）与使用限制

## 路线图

- [ ] 丰富长尾领域（图计算、工业视觉、教育等）
- [ ] 增加批量校验工具，自动检测失效链接
- [ ] 提供更结构化的机器可读索引（如 JSON/CSV）
- [ ] 加入示例脚本：按任务/规模筛选数据集

## 许可证

本索引文档遵循本仓库所采用的许可证；各数据集本身的版权与使用条款以其**官方许可证**为准。使用前请务必阅读并遵守相应许可证与限制条款。

## 致谢

感谢所有为开放科学与数据共享做出贡献的研究者、机构与社区维护者。也欢迎你通过 Issue/PR 参与完善本索引。
