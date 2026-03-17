#!/bin/bash
# FOMO Chad Skill 安装脚本
# 一键安装 Meme 币狙击技能

set -e

echo "🎯 FOMO Chad Skill 安装器"
echo "=========================="

# 检查 OpenClaw 环境
if [ ! -d "$HOME/.agents/skills" ]; then
    echo "❌ 未找到 OpenClaw 技能目录"
    echo "请先安装 OpenClaw: https://github.com/openclaw/openclaw"
    exit 1
fi

SKILL_DIR="$HOME/.agents/skills/fomo-chad"

# 如果已存在，备份旧版本
if [ -d "$SKILL_DIR" ]; then
    echo "📦 发现已安装版本，备份中..."
    mv "$SKILL_DIR" "$SKILL_DIR.backup.$(date +%Y%m%d%H%M%S)"
fi

# 克隆仓库
echo "📥 下载 FOMO Chad Skill..."
git clone --depth 1 https://github.com/yourusername/fomo-chad-skill.git /tmp/fomo-chad-skill 2>/dev/null || {
    echo "⚠️ Git 克隆失败，使用本地安装..."
    mkdir -p "$SKILL_DIR"
    cp -r "$(dirname "$0")"/* "$SKILL_DIR/" 2>/dev/null || true
}

# 复制到技能目录
if [ -d "/tmp/fomo-chad-skill" ]; then
    cp -r /tmp/fomo-chad-skill "$SKILL_DIR"
    rm -rf /tmp/fomo-chad-skill
fi

# 设置权限
chmod +x "$SKILL_DIR/scripts/"*.sh

# 检查依赖
echo "🔍 检查依赖..."

# 检查 Node.js (用于链上交互)
if ! command -v node > /dev/null 2>&1; then
    echo "⚠️ 未找到 Node.js，链上交易功能需要 Node.js"
    echo "   安装: https://nodejs.org/"
fi

# 检查 ethers.js
if ! npm list -g ethers > /dev/null 2>&1; then
    echo "📦 安装 ethers.js..."
    npm install -g ethers 2>/dev/null || true
fi

echo ""
echo "✅ FOMO Chad Skill 安装成功！"
echo ""
echo "🧠 使用方法:"
echo "   对 AI 说: \"查一下 0x123... 这个币能不能冲？\""
echo ""
echo "⚙️  配置环境变量:"
echo "   export PRIVATE_KEY=你的钱包私钥"
echo "   export BASE_RPC=https://mainnet.base.org"
echo ""
echo "🔒 安全提示:"
echo "   - 私钥仅存储在本地环境变量"
echo "   - 建议使用专门的小资金钱包"
echo "   - 首次使用建议先用小额测试"
echo ""
echo "WAGMI! 🚀"
