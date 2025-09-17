import os

files = os.listdir()
os.chdir("..")
os.system("sudo apt update")

os.system("sudo apt install zsh fzf -y")
os.system(
    "sudo apt install build-essential python3-dev python3-pip python-is-python3 cmake tmux -y"
)
os.system('sh -c "$(curl -fsSL https://install.ohmyz.sh/)"')
os.system(
    "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
)
os.system(
    "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
)

for file in files:
    if file[0] == "." and file != ".git":
        try:
            os.remove(f"{file}")
        except:
            pass
        os.system(f"ln -s .dotfiles/{file} {file}")
