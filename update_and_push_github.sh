#!/usr/bin/env bash

set -euo pipefail  # 出错立即退出

# ================== 配置区 ==================
REPO_DIR="/share/project/zhangjialing/A-scripts/datasets"    # 本地项目路径
REMOTE_NAME="origin"                                         # 远程仓库名称
REMOTE_URL="ssh://git@ssh.github.com:443/helloworld01001/datasets.git"  # GitHub 仓库地址（443 端口）

# 配置你的 GitHub 专用私钥路径（建议使用专门生成的密钥）
SSH_KEY="${HOME}/.ssh/id_ed25519_zjl"
export GIT_SSH_COMMAND="ssh -i ${SSH_KEY} -o IdentitiesOnly=yes"  # 指定 SSH 使用的私钥

GIT_USER_NAME="helloworld01001"               # GitHub 用户名
GIT_USER_EMAIL="zjl1917654182@gmail.com"      # GitHub 邮箱
COMMIT_MSG="auto: sync $(date +'%F %T')"      # 默认提交信息，带时间戳
# ============================================

echo "== 推送更新到 GitHub（安全同步） =="
echo "[INFO] 本地路径: ${REPO_DIR}"
echo "[INFO] 远程仓库: ${REMOTE_URL}"
echo "[INFO] 使用私钥: ${SSH_KEY}"

# 进入仓库目录
cd "${REPO_DIR}"

# 确保远程存在，否则添加远程
if git remote | grep -q "^${REMOTE_NAME}$"; then
    git remote set-url "${REMOTE_NAME}" "${REMOTE_URL}"
else
    git remote add "${REMOTE_NAME}" "${REMOTE_URL}"
fi

# 确保 Git 提交者信息正确
git config user.name  "${GIT_USER_NAME}"
git config user.email "${GIT_USER_EMAIL}"

# 检查是否有文件改动，如果没有则跳过提交
if git diff --quiet && git diff --cached --quiet; then
    echo "[INFO] 没有发现本地改动，无需推送。"
    exit 0
fi

# 添加所有变更文件
git add .
 
# 提交本地更改
git commit -m "${COMMIT_MSG}"

# 推送到 GitHub main 分支
git push "${REMOTE_NAME}" main

echo "[OK] 更新推送完成 ✅"
