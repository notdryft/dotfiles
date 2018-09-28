# The next line updates PATH for the Google Cloud SDK.
if [ -f /opt/google-cloud-sdk/path.zsh.inc ]; then
  source /opt/google-cloud-sdk/path.zsh.inc
fi

# The next line enables shell command completion for gcloud.
if [ -f /opt/google-cloud-sdk/completion.zsh.inc ]; then
  source /opt/google-cloud-sdk/completion.zsh.inc
fi

if [ -f /usr/share/google-cloud-sdk/completion.zsh.inc ]; then
  source /usr/share/google-cloud-sdk/completion.zsh.inc
fi
