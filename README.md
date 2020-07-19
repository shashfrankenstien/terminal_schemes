### Bash schemes and useful aliases

```sh
git clone https://github.com/shashfrankenstien/terminal_schemes.git
cd terminal_schemes
echo "source $(pwd)/aliases" >> ~/.bashrc # include useful aliases
echo "source $(pwd)/ps1" >> ~/.bashrc # include useful aliases
echo "python $(pwd)/ascii_faces.py" >> ~/.bashrc # basic hostname, datetime, battery percentage terminal header
```

sample theme with time and battery indication header (Note: slow terminal response time)
```sh
echo "source $(pwd)/basic" >> ~/.bashrc # basic hostname, datetime, battery percentage terminal header
```
