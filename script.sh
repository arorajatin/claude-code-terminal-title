# add this to your .zshrc file

# Set default title to current directory
precmd() {
    echo -ne "\033]0;${PWD##*/}\007"
}

# Override when running claude
claude() {
    local dir="${PWD##*/}"
    echo -ne "\033]0;[$dir] 🤖 Claude\007"
    command claude "$@"
    echo -ne "\033]0;${PWD##*/}\007"
}
