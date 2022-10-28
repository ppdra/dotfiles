if [[ "$UID" != 0 ]]; then
  local user_symbol="🥷"
else
  local user_symbol="🔥"
fi

#local time=%T
#local date=%D

local return_code="%(?:%{$fg_bold[green]%}↵ %{$reset_color%} :%{$fg_bold[red]%}↵ %?%{$reset_color%})"





PROMPT='%{$fg_bold[red]%}╭─[ %{$fg_bold[yellow]%}%D %T %{$fg_bold[red]%}]%{$reset_color%} - %{$fg_bold[red]%}[ %{$fg_bold[blue]%}%~ %{$fg_bold[red]%}]%{$reset_color%} $(git_prompt_info)
%{$fg_bold[red]%}╰─[%{$user_symbol%}]%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="- %{$fg_bold[red]%}[ %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗ %{$fg_bold[red]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}⸸ %{$fg_bold[red]%}]"

