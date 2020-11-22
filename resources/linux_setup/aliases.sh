n="echo"

# retrieving info
alias l="ls -alh"
alias lR="ls -alhR"
alias get_distinfos="{ { hostnamectl || uname -a; } ; $n ; cat /etc/*-release ; $n ; cat /proc/version; } 2>/dev/null"
alias get_diskinfos="{ fdisk -l ; $n ;  df -H ; $n ; lsblk -a ; $n ; free -hl; } 2>/dev/null"
alias get_netwinfos="{ { ifconfig -a || ip a; } ; $n ; netstat -nr ; $n ; cat /etc/resolv.conf; } 2>/dev/null"
alias get_hardinfos="{ hwinfo --short || lshw -short || lscpu; } 2>/dev/null"
alias get_sysinfos="{ ba_distinfos ; $n ; $n ; ba_hardinfos ; $n ; $n ; ba_diskinfos ; $n ; $n ; ba_netwinfos ; } 2>/dev/null"
alias get_listening="netstat -tulep"
alias get_established="netstat -tupe | grep -E 'ESTABLISHED | SYN.*'"

# moving
alias go_trash="cd $HOME/Trash"
alias go_docs="cd $HOME/Documents"
alias go_repos="cd $HOME/Repositories"
alias go_backups="cd $HOME/Backups"
alias go_softs="cd $HOME/Softwares"

# behavior modification
alias ba_extglob="shopt -s extglob"
alias ba_noextglob="shopt -u extglob"

# actions
alias mv_trash=""
alias mv_docs=""


