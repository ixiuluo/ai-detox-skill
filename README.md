# AI-Detox v3

面向中文学位论文、期刊论文和研究报告的 AI 特征诊断与改写 Skill。

v3 的核心变化：**事实优先、语境敏感、误报控制**。它不只查“AI 词”，还查数字口径、论证强度、引用对账和回归一致性。

## 功能

- **L0 事实与口径预检 + L1—L7 七层扫描**：数字四要素、财年/自然年、GAAP/调整后、公司事实、来源时效、图表题注；词汇、句式、段落、论证、信息密度、引用、元书写。
- **R 回归审计**：改后反查数字、引注、图表、目录、附录、封面、PDF 文本层。
- **S1—S10 改写策略**：从词汇替换到论证降格、引用对账。
- **误报控制**：学科术语白名单、数字范围破折号、合法对举、具体角度、真实列举。
- **两种模式**：`draft` 初稿模式、`late` 后期稿模式。
- **GB/T 7714-2015**：顺序编码制、一条一号、逐事实引用。

## 安装

### 方式一：安装脚本

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

```bash
/ai-detox 扫描 <文件路径> --mode=late
/ai-detox 改写 <文件路径> --mode=late
/ai-detox 事实 <文件路径>
/ai-detox 回归 <文件路径>
```

## 项目结构

```
ai-detox-skill/
├── README.md
├── CHANGELOG.md
├── LICENSE
├── skills/install.sh
└── .claude/skills/ai-detox/
    ├── SKILL.md
    └── knowledge-base.md
```

## v3 升级要点

- 新增 **L0 事实与口径层**：数字四要素、财年/自然年、GAAP/调整后、公司事实、来源时效、图表题注、摘要/正文/表格/附录对账。
- 新增 **L4 论证强度子层**：决定/证明/必然/充分/必要/不可能/越……越……必须匹配证据强度；缺失数据用“不可判定”。
- 新增 **L7 写作史/自我削弱/作者自称**：删“本文之前把X改为Y”，删“阶段顺序不是必然的”，把“提醒我们”改“说明”。
- 新增 **R 回归审计**：改完数字、引注、图表后，反查摘要、正文、表格、附录、封面、参考文献、图表清单和目录。
- 新增 **误报控制**：学科术语白名单、数字范围破折号、合法对举、具体角度、真实列举。
- 新增 **后期稿模式**：L1 降为低敏感，重点看 L0、L2、L4、L6、L7。

详细变更见 [CHANGELOG.md](CHANGELOG.md)。

## License

MIT
