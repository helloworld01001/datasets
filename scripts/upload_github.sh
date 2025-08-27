#!/usr/bin/env bash
set -euo pipefail

# ===== 配置区 =====
REPO_DIR="/share/project/zhangjialing/A-scripts/datasets"    # 本地项目路径
REMOTE_NAME="origin"                                         # 远程仓库名称
REMOTE_URL="ssh://git@ssh.github.com:443/helloworld01001/datasets.git"  # GitHub 仓库地址（443 端口）

# 配置你的 GitHub 专用私钥路径（建议专门生成一把，如 ~/.ssh/id_ed25519_zjl）
SSH_KEY="${HOME}/.ssh/id_ed25519_zjl"
export GIT_SSH_COMMAND="ssh -i ${SSH_KEY} -o IdentitiesOnly=yes"  # 显式指定使用这把私钥

GIT_USER_NAME="helloworld01001"               # GitHub 用户名
GIT_USER_EMAIL="zjl1917654182@gmail.com"      # GitHub 邮箱
COMMIT_MSG="datasets (first push & force overwrite)"   # 首次推送提交信息

# 输出提示信息
echo "== 首次推送到 GitHub（强制覆盖远程） =="
echo "[INFO] 本地路径: ${REPO_DIR}"
echo "[INFO] 远程仓库: ${REMOTE_URL}"
echo "[INFO] 使用私钥: ${SSH_KEY}"

# 切换到项目目录
cd "${REPO_DIR}"

# 删除旧的 .git 历史并重新初始化仓库，主分支命名为 main
rm -rf .git
git init -b main

# 设置提交者信息（在 GitHub 提交记录中显示）
git config user.name  "${GIT_USER_NAME}"
git config user.email "${GIT_USER_EMAIL}"

# 添加所有文件并提交
git add .
git commit -m "${COMMIT_MSG}"

# 配置远程仓库地址（如果远程已存在，则更新地址；否则新增）
if git remote | grep -q "^${REMOTE_NAME}$"; then
  git remote set-url "${REMOTE_NAME}" "${REMOTE_URL}"
else
  git remote add "${REMOTE_NAME}" "${REMOTE_URL}"
fi

# 强制推送到 GitHub（会覆盖远程 main 分支上的所有内容）
git push -u "${REMOTE_NAME}" main --force

echo "[OK] 首次推送完成 ✅"
