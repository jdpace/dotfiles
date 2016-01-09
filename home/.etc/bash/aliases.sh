alias l='ls -liah'

# prevent CDPATH from echoing
function cd () {
  builtin cd "$@" > /dev/null
}
