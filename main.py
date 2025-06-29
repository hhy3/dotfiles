import os 
files = os.listdir()
os.chdir('..')
os.system("apt update")
os.system("apt install fish -y")
os.system("chsh -s /usr/bin/fish")
os.system("apt install build-essential python3-dev python3-pip python-is-python3 cmake tmux -y")
for file in files:
  if file[0] == '.' and file != '.git':
    try:
      os.remove(f"{file}")
    except:
      pass
    os.system(f"ln -s .dotfiles/{file} {file}")

