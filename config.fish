if not functions -q fisher
    echo "Installing Fisher..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    fisher update
end


if status is-interactive
  alias n 'nvim'
  alias nvind 'cd ~/.config/nvim/'
  alias p 'pnpm'
  alias fconf 'nvim ~/.config/fish/config.fish'
  alias srcf 'source ~/.config/fish/config.fish'
end

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
