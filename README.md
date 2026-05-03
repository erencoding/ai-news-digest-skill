# AI News Digest Skill

多源 AI 资讯汇总 Skill，支持 11 个权威来源，自动生成带中文摘要和源链接的结构化日报。

## 目录结构

```
ai-news-digest/
├── SKILL.md          # 主 Skill 定义文件
├── scripts/          # 辅助脚本
├── examples/         # 输出示例
└── docs/             # 文档
```

## 来源（11个）

| # | 来源 | 类型 | 状态 |
|---|---|---|---|
| 1 | smol.ai | AI Twitter/Reddit 聚合 | ✅ |
| 2 | The Decoder | AI 深度分析 | ✅ |
| 3 | TechCrunch AI | 创业/融资新闻 | ⚠️ 需代理 |
| 4 | MarkTechPost | AI 论文/工具 | ✅ |
| 5 | DeepMind Blog | 官方研究 | ⚠️ 需代理 |
| 6 | BAIR Blog | Berkeley 学术研究 | ✅ |
| 7 | KDnuggets | 数据科学/ML 教程 | ✅ |
| 8 | The Batch | 吴恩达每周分析 | ✅ |
| 9 | Hacker News | AI 技术讨论 | ✅ |
| 10 | Artificial Intelligence News | 商业 AI 新闻 | ✅ |
| 11 | Artificial Analysis | AI 模型排行榜 | ✅ |

## 输出格式要求

1. 每条资讯必须包含**中文摘要**（2-3句话）
2. 每条必须有**可点击源链接**
3. 最后必须有**来源汇总表**
4. 包含 **AI 模型排行榜** 模块

## 版本历史

- v6.1: 新增 Artificial Analysis AI 模型排行榜
- v6.0: 确立完整格式标准，扩展至 10 个来源