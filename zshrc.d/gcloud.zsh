# The next line updates PATH for the Google Cloud SDK.
if [[ -d /opt/google-cloud-sdk ]]; then
  source '/opt/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables zsh completion for gcloud.
if [[ -d /opt/google-cloud-sdk ]]; then
  source '/opt/google-cloud-sdk/completion.zsh.inc'
fi
