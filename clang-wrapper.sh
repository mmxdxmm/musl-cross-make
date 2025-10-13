#!/bin/bash
# 保存为 clang-wrapper.sh

# 定义要过滤的不支持参数
UNSUPPORTED_ARGS=(
    "-fira-region=one"
    "-fira-hoist-pressure" 
    "-freorder-blocks-algorithm=simple"
    "-fno-tree-ch"
    "-fno-align-jumps"
    "-fno-align-loops"
    "-fno-align-labels"
    "-fno-prefetch-loop-arrays"
    "-fno-tree-loop-distribute-patterns"
    "-print-multi-os-directory"
)

# 构建新的参数列表
NEW_ARGS=()
for arg in "$@"; do
    skip=0
    for unsupported in "${UNSUPPORTED_ARGS[@]}"; do
        if [ "$arg" = "$unsupported" ]; then
            skip=1
            break
        fi
    done
    [ $skip -eq 0 ] && NEW_ARGS+=("$arg")
done

# 调用真正的 clang
exec /lib/llvm-20/bin/clang "${NEW_ARGS[@]}"