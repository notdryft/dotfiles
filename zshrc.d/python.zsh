export PATH=$HOME/.local/bin:$PATH

alias pup='pip list -ol --format=freeze --user | grep -v "^\-e" | cut -d= -f1 | xargs -n1 pip install -U --user'
