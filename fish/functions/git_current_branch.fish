function git_current_branch
    git branch | grep -e "^*" | cut  -d" " -f 2
end
