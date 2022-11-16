#! bash oh-my-bash.module
#  ---------------------------------------------------------------------------

# Directory Listing aliases
alias dir='ls -hFxC'
alias l.='ls -C -d .* --color=tty' # short listing, only hidden files - .*
alias l='ls -lathFC'             # long, sort by newest to oldest
alias L='ls -latrhFC'            # long, sort by oldest to newest
alias la='ls -AlC'               # show hidden files
alias lc='ls -lcrC'              # sort by change time
alias lk='ls -lSrC'              # sort by size
alias lh='ls -lSrhC'             # sort by size human readable
alias lm='ls -al | more'        # pipe through 'more'
alias lo='ls -laSFhC'            # sort by size largest to smallest
alias lr='ls -lRC'               # recursive ls
alias lt='ls -ltrC'              # sort by date
alias lu='ls -lurC'              # sort by access time


#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias dud='du -d 1 -h'                      # Short and human-readable file listing
alias duf='du -sh *'                        # Short and human-readable directory listing
