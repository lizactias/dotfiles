# Home / End / Delete (Kitty)
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Algumas aplicações enviam estas variantes
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
