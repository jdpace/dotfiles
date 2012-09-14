export PATH=~/.etc/bin:$PATH
export CDPATH=.:~/Dev/projects:~/Dev/relevance

source ~/.etc/bash/aliases.sh
source ~/.etc/bash/autocomplete.sh
source ~/.etc/bash/functions.sh
source ~/.etc/bash/git.sh
source ~/.etc/bash/git-autocomplete.sh
source ~/.etc/bash/ruby.sh
source ~/.etc/bash/ssh-autocomplete.sh
source ~/.etc/bash/powerline.sh
source ~/.etc/bash/truecrypt.sh
source ~/.etc/bash/vim.sh

ssh-add ~/.ssh/id_rsa ~/.ssh/relevance_aws.pem &> /dev/null
