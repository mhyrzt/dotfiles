# dotfiles

```bash
git clone https://github.com/mhyrzt/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
```

**NOTES:** make sure you have install `Hack` font correctly. 

## WSL 2
### `matplotlib`, `pygame` & more
- windows setup
  - install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
  - tick `Disable Access Control`
- add following line to `.zshrc`

```bash
 export DISPLAY=`grep -oP "(?<=nameserver ).+" /etc/resolv.conf`:0.0
```

- also install:
```bash
sudo apt-get install libsdl2-dev
```

### Jupyter
```bash
alias jupyter-lab="jupyter lab --ip $(python3 -c "import subprocess; subprocess.run(['hostname', '-I'], text=True).stdout")"
```
