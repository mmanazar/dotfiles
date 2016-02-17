alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

alias sandbox='ssh bmanazar@10.24.71.61 -i "~/.ssh/bmanazar.pem"'

alias datasync='ssh bmanazar@10.24.71.86 -i "~/.ssh/bmanazar.pem"'

alias devftp='ssh bmanazar@10.30.3.74 -i "~/.ssh/bmanazar.pem"'

alias devftpfs='sshfs bmanazar@10.30.3.74:/var/www/ ~/DevFTP/ -oIdentityFile="~/.ssh/bmanazar.pem",noappledouble,reconnect,defer_permissions,cache=no'

alias sandboxfs='sshfs bmanazar@10.24.71.61:/var/www/ ~/SandBox/ -oIdentityFile="~/.ssh/bmanazar.pem",noappledouble,reconnect,defer_permissions,cache=no'

alias datasyncfs='sshfs bmanazar@10.24.71.86:/var/www/ ~/datasyncfs/ -oIdentityFile="~/.ssh/bmanazar.pem",noappledouble,reconnect,defer_permissions,cache=no'

alias mypuppet='ssh ubuntu@52.5.89.53'

