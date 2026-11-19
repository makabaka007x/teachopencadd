# TeachOpenCADD 简体中文教程

[课程目录](#课程目录) · [English README](README.en.md) · [Volkamer Lab 上游项目](https://github.com/volkamerlab/teachopencadd)

这个仓库为 TeachOpenCADD 的 **34 课**提供简体中文 Jupyter Notebook，覆盖化学信息学、虚拟筛选、分子对接、分子动力学和深度学习。中英文 Notebook 放在同一课程目录，共用示例数据、图片和依赖清单。这是基于 Volkamer Lab 原课制作的中文译本。

## 本地运行

在 Linux 或 Windows 的 WSL 终端安装 `uv`，然后克隆此仓库。已经有 `uv` 和仓库副本时，在仓库根目录运行最后一行即可。 [uv 安装说明](https://docs.astral.sh/uv/getting-started/installation/)

```sh
git clone --depth 1 https://github.com/makabaka007x/teachopencadd.git
cd teachopencadd
/bin/sh study.sh T001
```

在浏览器打开终端打印的 Jupyter `localhost` 链接，即可进入中文 Notebook。可以从 Jupyter 文件列表打开同目录的 `talktorial.ipynb` 对照英文原版。第一次运行某课时会联网安装依赖，之后会复用环境。要打开下一课，将命令末尾的 `T001` 改成 `T002` 即可。

T001 沿用上游流程，实操时联网查询 ChEMBL，导出前会载入随课的 ChEMBL 27 教学快照，便于后续课程复用相同输入。保存 Notebook 后，在启动终端按 `Ctrl+C` 停止 Jupyter。

## 学习顺序

| 课号 | 学习内容 |
| --- | --- |
| T001–T007 | 化合物数据、分子过滤、相似性、聚类和机器学习筛选 |
| T008–T014 | 结构数据库、药效团、结合位点比较与检测 |
| T015–T020 | 蛋白–配体对接、相互作用、流程自动化和分子动力学 |
| T021–T028 | 神经网络筛选与激酶比较 |
| T033–T038 | 分子表征、RNN、GNN、不确定性和相互作用预测 |

每课可以先读讲解并复现原例，再改一项输入或参数，对照结果并写下解释。

## 课程目录

编号从 T028 跳到 T033，与上游目录一致。T017、T020 等包含较大的输出，若 GitHub 页面无法预览，可克隆后用 Jupyter 在本地打开。

| 课号 | 内容 | Notebook |
| --- | --- | --- |
| T001 | ChEMBL 化合物和活性数据 | [中文](teachopencadd/talktorials/T001_query_chembl/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T001_query_chembl/talktorial.ipynb) |
| T002 | ADME 与类先导化合物过滤 | [中文](teachopencadd/talktorials/T002_compound_adme/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T002_compound_adme/talktorial.ipynb) |
| T003 | 过滤不需要的子结构 | [中文](teachopencadd/talktorials/T003_compound_unwanted_substructures/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T003_compound_unwanted_substructures/talktorial.ipynb) |
| T004 | 基于分子相似性的虚拟筛选 | [中文](teachopencadd/talktorials/T004_compound_similarity/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T004_compound_similarity/talktorial.ipynb) |
| T005 | 化合物聚类 | [中文](teachopencadd/talktorials/T005_compound_clustering/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T005_compound_clustering/talktorial.ipynb) |
| T006 | 最大公共子结构 | [中文](teachopencadd/talktorials/T006_compound_maximum_common_substructures/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T006_compound_maximum_common_substructures/talktorial.ipynb) |
| T007 | 机器学习虚拟筛选 | [中文](teachopencadd/talktorials/T007_compound_activity_machine_learning/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T007_compound_activity_machine_learning/talktorial.ipynb) |
| T008 | 从 PDB 获取蛋白质结构 | [中文](teachopencadd/talktorials/T008_query_pdb/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T008_query_pdb/talktorial.ipynb) |
| T009 | 基于配体的药效团 | [中文](teachopencadd/talktorials/T009_compound_ensemble_pharmacophores/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T009_compound_ensemble_pharmacophores/talktorial.ipynb) |
| T010 | 结合位点相似性与脱靶预测 | [中文](teachopencadd/talktorials/T010_binding_site_comparison/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T010_binding_site_comparison/talktorial.ipynb) |
| T011 | 查询在线 API | [中文](teachopencadd/talktorials/T011_query_online_api_webservices/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T011_query_online_api_webservices/talktorial.ipynb) |
| T012 | 从 KLIFS 获取激酶数据 | [中文](teachopencadd/talktorials/T012_query_klifs/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T012_query_klifs/talktorial.ipynb) |
| T013 | 从 PubChem 获取化合物数据 | [中文](teachopencadd/talktorials/T013_query_pubchem/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T013_query_pubchem/talktorial.ipynb) |
| T014 | 结合位点检测 | [中文](teachopencadd/talktorials/T014_binding_site_detection/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T014_binding_site_detection/talktorial.ipynb) |
| T015 | 蛋白–配体对接 | [中文](teachopencadd/talktorials/T015_protein_ligand_docking/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T015_protein_ligand_docking/talktorial.ipynb) |
| T016 | 蛋白–配体相互作用 | [中文](teachopencadd/talktorials/T016_protein_ligand_interactions/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T016_protein_ligand_interactions/talktorial.ipynb) |
| T017 | NGLView 三维可视化进阶 | [中文](teachopencadd/talktorials/T017_advanced_nglview_usage/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T017_advanced_nglview_usage/talktorial.ipynb) |
| T018 | 先导优化自动化流程 | [中文](teachopencadd/talktorials/T018_automated_cadd_pipeline/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T018_automated_cadd_pipeline/talktorial.ipynb) |
| T019 | 分子动力学模拟 | [中文](teachopencadd/talktorials/T019_md_simulation/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T019_md_simulation/talktorial.ipynb) |
| T020 | 分子动力学轨迹分析 | [中文](teachopencadd/talktorials/T020_md_analysis/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T020_md_analysis/talktorial.ipynb) |
| T021 | 独热编码 | [中文](teachopencadd/talktorials/T021_one_hot_encoding/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T021_one_hot_encoding/talktorial.ipynb) |
| T022 | 神经网络虚拟筛选 | [中文](teachopencadd/talktorials/T022_ligand_based_screening_neural_network/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T022_ligand_based_screening_neural_network/talktorial.ipynb) |
| T023 | 认识激酶 | [中文](teachopencadd/talktorials/T023_what_is_a_kinase/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T023_what_is_a_kinase/talktorial.ipynb) |
| T024 | 激酶序列相似性 | [中文](teachopencadd/talktorials/T024_kinase_similarity_sequence/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T024_kinase_similarity_sequence/talktorial.ipynb) |
| T025 | 激酶口袋相似性（KiSSim） | [中文](teachopencadd/talktorials/T025_kinase_similarity_kissim/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T025_kinase_similarity_kissim/talktorial.ipynb) |
| T026 | 激酶相互作用指纹 | [中文](teachopencadd/talktorials/T026_kinase_similarity_ifp/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T026_kinase_similarity_ifp/talktorial.ipynb) |
| T027 | 按配体谱比较激酶 | [中文](teachopencadd/talktorials/T027_kinase_similarity_ligand_profile/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T027_kinase_similarity_ligand_profile/talktorial.ipynb) |
| T028 | 对照多种激酶相似性指标 | [中文](teachopencadd/talktorials/T028_kinase_similarity_compare_perspectives/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T028_kinase_similarity_compare_perspectives/talktorial.ipynb) |
| T033 | 分子表征 | [中文](teachopencadd/talktorials/T033_molecular_representations/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T033_molecular_representations/talktorial.ipynb) |
| T034 | 基于 RNN 的分子性质预测 | [中文](teachopencadd/talktorials/T034_recurrent_neural_networks/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T034_recurrent_neural_networks/talktorial.ipynb) |
| T035 | 基于 GNN 的分子性质预测 | [中文](teachopencadd/talktorials/T035_graph_neural_networks/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T035_graph_neural_networks/talktorial.ipynb) |
| T036 | E(3) 不变图神经网络 | [中文](teachopencadd/talktorials/T036_e3_equivariant_gnn/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T036_e3_equivariant_gnn/talktorial.ipynb) |
| T037 | 不确定性估计 | [中文](teachopencadd/talktorials/T037_uncertainty_estimation/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T037_uncertainty_estimation/talktorial.ipynb) |
| T038 | 蛋白–配体相互作用预测 | [中文](teachopencadd/talktorials/T038_protein_ligand_interaction_prediction/talktorial.zh-CN.ipynb) · [英文](teachopencadd/talktorials/T038_protein_ligand_interaction_prediction/talktorial.ipynb) |

## 环境和磁盘

教材和笔记保存在克隆目录。运行环境按课创建，默认位于 `~/.teachopencadd_envs/`。T001 等课由 `uv` 管理依赖。部分对接和模拟课程依赖 Conda 软件包，运行前需确保终端能找到 `micromamba`、`mamba` 或 `conda` 中任意一个。学完某课并关掉 Jupyter 后，可以按需删除对应的环境目录，日后重跑时再创建。

34 课的中英文 Notebook 使用相同的上游代码、保存的输出和 Notebook 元数据。中文版的差异仅在 Markdown 单元。T002–T004 已在 WSL 中执行检查，全部课程均已检查 Notebook 格式和文件引用。涉及外部数据库、模拟或模型训练的课程，其运行要求以各课说明为准。

## 来源与许可

原课程由 Volkamer Lab 开发，采用 CC BY 4.0 许可。中文译本基于固定的上游版本，各课保留作者及来源信息。科研或教学中使用时，请引用 TeachOpenCADD。 [上游版本](https://github.com/volkamerlab/teachopencadd/tree/834b9ff59af69e8ba8d42aae23e92c15eb734ef0) · [引用方式](https://projects.volkamerlab.org/teachopencadd/citation.html) · [许可证](LICENSE)
