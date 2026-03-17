# 🎯 FOMO Chad - Meme Coin Sniper Skill

专为 Degen 打造的 OpenClaw 技能包，让你的 AI 瞬间拥有识别蜜罐、秒查池子、防夹下单的物理级超能力！

## ✨ 功能特性

- 🔍 **2秒安全扫描** - 自动检测蜜罐、Rug Score、流动性
- 🛡️ **智能风控** - Rug Score ≥ 20 或蜜罐自动拦截
- ⚡ **极速狙击** - 10% 滑点市价单，抢跑其他 Apes
- 💰 **小资金博大梦** - 100 USDT 预算，专打早期 Meme

## 🚀 一键安装

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/fomo-chad-skill/main/install.sh | bash
```

## 🧠 使用方法

安装后，直接对 AI 说：

> "查一下 `0x1234...` 这个 Meme 币能不能冲？"

AI 会自动执行：
1. ✅ 查 Token 安全性 (Rug Score, 蜜罐检测)
2. ✅ 查 DEX 流动性 (必须 > 20k U)
3. ✅ 如果安全，询问是否买入
4. ✅ 确认后立即执行 100 USDT 市价单

## ⚙️ 配置

```bash
# 设置钱包 (建议使用专门的小资金钱包)
export PRIVATE_KEY=你的钱包私钥

# 可选: 自定义 Base RPC
export BASE_RPC=https://mainnet.base.org
```

## 🛡️ 安全红线

- **蜜罐检测**: 无法卖出的合约自动拦截
- **Rug Score**: ≥ 20 分的合约禁止交易
- **流动性门槛**: 池子 < 20k U 不碰
- **滑点保护**: 固定 10% 滑点，防夹单

## 📁 项目结构

```
fomo-chad/
├── SKILL.md              # 技能主文件 (AI 读取)
├── scripts/
│   ├── check_token.sh    # Token 安全检查
│   ├── swap.sh           # 链上交易执行
│   └── install.sh        # 一键安装脚本
└── README.md             # 本文件
```

## 🔧 技术栈

- **链**: Base (低 Gas，Meme 币温床)
- **API**: Honeypot.is + DexScreener + Birdeye
- **交易**: ethers.js / OKX OnchainOS
- **预算**: 100 USDT / 次

## ⚠️ 风险提示

1. **Meme 币高风险** - 可能归零，只用可承受损失的资金
2. **合约风险** - 即使通过检测，仍有未知漏洞可能
3. **Gas 费** - Base 虽便宜，但频繁交易也有成本
4. **滑点** - 10% 滑点意味着可能以高于市价 10% 成交

## 🏆 黑客松参赛信息

- **赛道**: OKX AI 黑客松 - 龙虾赛道
- **主题**: OnchainOS + AI Agent
- **口号**: 把机构的钱赚进自己兜里！

## 📜 开源协议

MIT License - 自由使用，风险自负

## 🤝 贡献

欢迎 PR！一起让 FOMO Chad 更强：
- 接入更多链 (Solana, ETH mainnet)
- 添加止盈止损功能
- 支持限价单狙击
- 社交情绪分析

---

**WAGMI! Lambo is loading... 🚀**

@okxchinese #OKXAI松 #OnchainOS
