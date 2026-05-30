function prompt_char {
    echo '.'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='
%n at %m in %F{#b4befe}%~%f$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#f9e2af}!%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{#f9e2af}?%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
