# ==============================================================================
# local config
# ==============================================================================

# Lazy find
function lfind() {
  l ${2:-.} | grep -i ${1}
}

# nvm, lazy-loaded: sourcing nvm.sh costs ~0.4s per new shell, so only load it on first `nvm` call.
# The default Node's bin dir goes on PATH now, so node/npm/pnpm and global CLIs work immediately.
_nvm_default=${$(<$NVM_DIR/alias/default 2>/dev/null)#v}
_nvm_node=( $NVM_DIR/versions/node/v${_nvm_default}*(N/n[-1]) )
(( $#_nvm_node )) || _nvm_node=( $NVM_DIR/versions/node/v*(N/n[-1]) )
if (( $#_nvm_node )) && (( ! ${path[(Ie)$_nvm_node[1]/bin]} )); then
  path=( $_nvm_node[1]/bin $path )
fi
unset _nvm_default _nvm_node

nvm() {
  unfunction nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm "$@"
}
