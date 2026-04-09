
eval "$(/opt/homebrew/bin/brew shellenv)"

# Use gcloud ADC as default credentials source for gws.
if [ -f "$HOME/.config/gcloud/application_default_credentials.json" ]; then
  export GOOGLE_WORKSPACE_CLI_CREDENTIALS_FILE="$HOME/.config/gcloud/application_default_credentials.json"
fi
