export GOPATH=$HOME/Code/go
export PATH=$GOPATH/bin:$PATH

alias goarm='GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build'
alias golinux='GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build'
