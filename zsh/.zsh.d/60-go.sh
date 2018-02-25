if [[ -d ~/.go ]]; then
  export GOPATH="$HOME/.go"
  export PATH="$GOPATH/bin:$PATH"
fi
