function fish_prompt -d "Write out the prompt"
    printf '%s%s %s%s%s%s%s: ' $USER \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color FFB6C1) (fish_git_prompt) (set_color normal) 
end

set -x PATH . $PATH
set -x PATH "$HOME/.local/bin" $PATH
set -x PATH /usr/local/cuda/bin $PATH
set -x PATH "$HOME/.cargo/bin" $PATH
set -x PATH "$HOME/.nvim/bin" $PATH
set -x PATH /usr/local/go/bin $PATH

set -x HF_ENDPOINT https://hf-mirror.com

set -x UV_DEFAULT_INDEX https://pypi.tuna.tsinghua.edu.cn/simple

git config --global https.proxy
git config --global http.sslVerify false


