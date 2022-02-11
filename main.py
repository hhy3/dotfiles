import os 

for file in os.listdir():
  if file[0] == '.':
    if os.path.exists(f"~/{file}"):
      os.remove(f"~/{file}")
    os.system(f"ln -s {file} ~/{file}")
    