CTRLP_KEYBIND=${CTRLP_KEYBIND:-'^P'}
CTRLP_FINDER_COMMAND=${CTRLP_FINDER_COMMAND:-'find . -not -path '\''*/\.*'\'''}

CTRLP_FUZZER_COMMAND=fzf
ctrlp() {
    zle reset-prompt
    # TODO FINDER_COMMAND env var is not used here
    print -z - $BUFFER $( find . -not -path '*/\.*' | $CTRLP_FUZZER_COMMAND)
    zle send-break
    # TODO EXECUTE_LINE
}

zle -N ctrlp
bindkey $CTRLP_KEYBIND ctrlp
