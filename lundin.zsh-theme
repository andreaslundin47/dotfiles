BOLD_BLUE=$fg_bold[blue]
BOLD_CYAN=$fg_bold[cyan]
BOLD_GREEN=$fg_bold[green]
BOLD_YELLOW=$fg_bold[yellow]
BOLD_RED=$fg_bold[red]
MAGENTA=$fg[magenta]
BOLD_MAGENTA=$fg_bold[magenta]
WHITE=$fg[white]
YELLOW=$fg[yellow]
RED=$fg[red]
CYAN=$fg[cyan]
RESET=$reset_color

# Foramt for branch name and dirt/clean
ZSH_THEME_GIT_PROMPT_PREFIX="%{$BOLD_BLUE%} git:(%{$RED%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$BOLD_BLUE%})%{$RESET%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$YELLOW%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for remote_status()
ZSH_THEME_GIT_PROMPT_AHEAD="%{$BOLD_YELLOW%}↑%{$RESET%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$BOLD_BLUE%}↓%{$RESET%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$BOLD_RED%}→←%{$RESET%}"

# Format other git statuses
ZSH_THEME_GIT_PROMPT_ADDED="%{$BOLD_GREEN%}+%{$RESET%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$RED%}×%{$RESET%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$BOLD_YELLOW%}*%{$RESET%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$YELLOW%}➜%{$RESET%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$RED%}•%{$RESET%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$BOLD_BLUE%}?%{$RESET%}"

remote_status() {
  INDEX=$(command git status --porcelain -b 2> /dev/null)
  STATUS=""
  if $(echo "$INDEX" | grep '^## .*ahead' &> /dev/null); then
    STATUS="$ZSH_THEME_GIT_PROMPT_AHEAD$STATUS"
  fi
  if $(echo "$INDEX" | grep '^## .*behind' &> /dev/null); then
    STATUS="$ZSH_THEME_GIT_PROMPT_BEHIND$STATUS"
  fi
  if $(echo "$INDEX" | grep '^## .*ahead* .*behind' &> /dev/null); then
    STATUS=""
    STATUS="$ZSH_THEME_GIT_PROMPT_DIVERGED$STATUS"
  fi
  echo $STATUS
}


PROMPT='%{$BOLD_CYAN%}%n%{$RESET%}@%{$BOLD_MAGENTA%}%M:%{$BOLD_GREEN%}%c%{$RESET%}$(git_prompt_info)$($remote_status)$(git_prompt_status)%{$RESET%} %{$BOLD_CYAN%}%(!.#.$)%{$RESET%} '




