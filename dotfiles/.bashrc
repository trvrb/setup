[ -n "$PS1" ] && source ~/.bash_profile

# added by travis gem
[ -f /Users/trvrb/.travis/travis.sh ] && source /Users/trvrb/.travis/travis.sh

# Adding nextstrain to path
eval "$("/Users/trvrb/.nextstrain/cli-standalone/nextstrain" init-shell bash)"
