# AI-Detox Skill

面向 Claude Code 的学术写作 AI 特征诊断与去除工具。

## 功能

- **七层扫描(L1-L7)**：从词汇、句式、段落、论证、信息密度、引用、元书写七个维度检测 AI 痕迹
- **六种改写策略(S1-S6)**：针对每层问题提供对应的改写方案
- **七类浮夸文风禁令**：学术装饰、大词、文学隐喻等禁止清单
- **GB/T 7714-2015 参考文献规范**：顺序编码制格式指南与自检清单

## 安装

### 方式一：Skill 安装脚本

```bash
git clone https://github.com/ixiuluo/ai-detox-skill.git
cd ai-detox-skill
bash skills/install.sh
```

### 方式二：手动复制

```bash
# Claude Code
cp -r .claude/skills/ai-detox ~/.claude/skills/

# 或直接加载 memory
cp .claude/skills/ai-detox/knowledge-base.md ~/.claude/memory/ai-detox-skill.md
```

## 使用

在 Claude Code 中激活：

```
/ai-detox 扫描 <文件路径>   # 对文件进行七层AI特征扫描
/ai-detox 改写 <文件路径>   # 对文件进行AI痕迹改写
```

## 项目结构

```
ai-detox-skill/
├── README.md
├── LICENSE
└── .claude/skills/ai-detox/
    ├── SKILL.md              # Skill 定义
    └── knowledge-base.md     # 完整知识体系
```

## License

MIT
