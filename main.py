import os 
files = os.listdir()
os.chdir('..')
for file in files:
  if file[0] == '.' and file != '.git':
    try:
      os.remove(f"{file}")
    except:
      pass
    os.system(f"ln -s .dotfiles/{file} {file}")

