function fish_prompt -d "Write out the prompt"
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    printf '%s%s %s%s%s%s%s: ' $USER \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color FFB6C1) (fish_git_prompt) (set_color normal) 
end

set -x PATH . $PATH
set -x PATH /usr/local/cuda/bin $PATH
set -x PATH "$HOME/.cargo/bin" $PATH
set -x PATH "$HOME/.nvim/bin" $PATH

git config --global https.proxy
git config --global http.sslVerify false

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

