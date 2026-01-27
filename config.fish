set -g fish_greeting ""


if not functions -q fisher
    echo "Installing Fisher..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    fisher update
end

if status is-interactive
  alias n     'nvim'
  alias ndir  'cd ~/.config/nvim/'
  alias p     'pnpm'

  alias nrd    'npm run dev'
  alias ni    'npm i'
  
  alias conff 'nvim ~/.config/fish/config.fish'
  alias srcf  'source ~/.config/fish/config.fish'

  alias dnfi  'sudo dnf install -y'
  alias dnfr  'sudo dnf remove -y'
  alias dnfu  'sudo dnf upgrade -y'

  alias gp    'git push'
  alias gst   'git status'
end

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
