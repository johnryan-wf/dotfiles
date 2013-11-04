# make homebrew installed programs take precedence over system installed
export PATH="/usr/local/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# make node modules part of PATH
export PATH="/usr/local/share/npm/bin:$PATH"

# avoid ENOENT (too many files) - node
ulimit -n 2048

# setup Webfilings virtual environment
alias sky="cd /Users/john/workspaces/wf/bigsky/z_bigsky && source /Users/john/dev/wf/sky/bin/activate"
alias server="sky ; python manage.py runserver 8001"
alias erasereset="cd /Users/john/workspaces/wf/bigsky/z_bigsky ; python tools/erase_reset_data.py"

alias sky2="cd /Users/john/workspaces/wf/bigsky/x_bigsky && source /Users/john/dev/wf/sky/bin/activate"

# add Flash Compiler to path
export FLEX_HOME=/Users/john/workspaces/wf/support/flex_sdks/4.5.1A
export PATH="$PATH":"$FLEX_HOME/bin"

# add Flash Player to path
# export FLASH_PLAYER="/Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/MacOS/Flash\ Player\ Debugger"
# export PATH="$PATH":"$FLASH_PLAYER"
export PATH="$PATH":"$FLEX_HOME/bin"

# Allow Maven to use more memory
export MAVEN_OPTS="-Xmx2048m -Xss1024m" 

# set Maven home directory
export M3_HOME=/usr/local/Cellar/maven/3.0.5
PATH=$M3_HOME/bin:$PATH

# add Go language binaries to PATH variable
export GOHOME=/usr/local/Cellar/go/1.1.2
export PATH=$PATH:$GOHOME/bin
export GOPATH=$HOME/dev/go_workspace
export PATH=$PATH:$GOPATH/bin




