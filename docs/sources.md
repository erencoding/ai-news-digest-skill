# 数据来源文档

## 来源列表

### 1. smol.ai
- **URL**: https://news.smol.ai/rss.xml
- **类型**: AI Twitter/Reddit 聚合
- **抓取方式**: 直接 curl RSS
- **状态**: ✅ 正常

### 2. The Decoder
- **URL**: https://the-decoder.com/feed/
- **类型**: AI 技术/商业/伦理深度分析
- **抓取方式**: 直接 curl RSS
- **状态**: ✅ 正常

### 3. TechCrunch AI
- **URL**: https://techcrunch.com/tag/artificial-intelligence/feed/
- **类型**: 创业/融资/公司新闻
- **抓取方式**: 需要代理 `-x http://127.0.0.1:7892`
- **状态**: ⚠️ 需代理

### 4. MarkTechPost
- **URL**: https://www.marktechpost.com/
- **类型**: AI 论文/工具/教程
- **抓取方式**: 直接 curl 主页 HTML
- **状态**: ✅ 正常

### 5. DeepMind Blog
- **URL**: https://deepmind.google/blog/
- **类型**: 官方研究发布
- **抓取方式**: 代理或直接尝试
- **状态**: ⚠️ 需代理

### 6. BAIR Blog
- **URL**: https://bair.berkeley.edu/blog/
- **类型**: Berkeley 学术研究
- **抓取方式**: 直接 curl 主页
- **状态**: ✅ 正常

### 7. KDnuggets
- **URL**: https://www.kdnuggets.com/news/top-stories.html
- **类型**: 数据科学/ML 教程
- **抓取方式**: 直接 curl 主页
- **状态**: ✅ 正常

### 8. The Batch (DeepLearning.AI)
- **URL**: https://www.deeplearning.ai/the-batch/
- **类型**: 吴恩达每周行业分析
- **抓取方式**: 直接 curl 主页，然后进入 issue 页面
- **状态**: ✅ 正常
- **Issue URL 格式**: https://www.deeplearning.ai/the-batch/issue-{编号}/

### 9. Hacker News
- **URL**: https://hacker-news.firebaseio.com/v0/topstories.json
- **类型**: AI 技术讨论
- **抓取方式**: JSON API
- **状态**: ✅ 正常

### 10. Artificial Intelligence News
- **URL**: https://www.artificialintelligence-news.com/
- **类型**: 商业 AI 新闻
- **抓取方式**: 直接 curl RSS
- **状态**: ✅ 正常

### 11. Artificial Analysis
- **URL**: https://artificialanalysis.ai/
- **类型**: AI 模型排行榜
- **抓取方式**: Playwright 截图
- **状态**: ✅ 正常

## 注意事项

- TechCrunch 必须加代理：`-x http://127.0.0.1:7892`
- DeepMind 国内访问困难，建议跳过
- Hacker News 连接较慢，设置足够的 timeout
- 每条资讯必须包含中文摘要，不能只给标题