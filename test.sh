#!/bin/sh

#MINISHELL="valgrind -q --leak-check=full --track-fds=no ./minishell"
 MINISHELL="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes  --suppressions=./includes/readline.h ./minishell"

#MINISHELL="./minishell"

make
clear

echo -e '  __  __ _____ _   _ _____  _____ _    _ ______ _      _
 |  \/  |_   _| \ | |_   _|/ ____| |  | |  ____| |    | |
 | \  / | | | |  \| | | | | (___ | |__| | |__  | |    | |
 | |\/| | | | | . ` | | |  \___ \|  __  |  __| | |    | |
 | |  | |_| |_| |\  |_| |_ ____) | |  | | |____| |____| |____
 |_|  |_|_____|_| \_|_____|_____/|_|  |_|______|______|______|'
echo -e "=============================================================="
echo -e '\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '         \nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ls\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ls srrc\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '/bin/ls -la\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ls *\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo Hello\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo -n Hello\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo -n Hello -n \necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'exit 0\necho $?' | $MINISHELL
echo -e $?
echo -e "=============================================================="
echo -e 'exit 1\necho $?' | $MINISHELL
echo -e $?
echo -e "=============================================================="
echo -e 'exit 33\necho $?' | $MINISHELL
echo -e $?
echo -e "=============================================================="
echo -e 'exit exit exit' | $MINISHELL
echo -e $?
echo -e "=============================================================="
echo -e 'exit exit 33' | $MINISHELL
echo -e $?
echo -e "=============================================================="
echo -e 'exit 2 exit\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'exit 2 2\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '/usr/bin/tr -x\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '/usr/bin/tr "-x b"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '/bin/ls srrc\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '/bin/lss srrc\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echoo\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'lss\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'pwdd\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaaaaaaaa > out\ncat out\necho $?\nrm -rf out\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaaaaaaaa > out\ncat out | cat out > out\ncat out\necho $?\nrm -rf out\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaaaaaaaa > out\necho "cat out | cat out > out"\necho $?\nrm -rf out\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "echo '\$USER'\\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo 'abacate'\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e 'export TESTE1=batata\necho $TESTE1\nunset TESTE1\necho $TESTE1\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd .\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ~\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ~~\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd nope~\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ~nope\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ~/\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ..\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ..\ncd ..\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd ../..\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd /\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd \npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cd not_exist\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset HOME\ncd\necho $?\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset HOME\ncd \necho $?\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset HOME\ncd ~\necho $?\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset HOME\ncd $HOME\necho $?\npwd\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaa | wc -l\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset PATH\nls\nwc\nclear\nexport PATH=/usr/bin\nls\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset PATH\nexport PATH=/usr/bin:/bin\nenv | grep PATH\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1 > out2 > out3\ncat out1\ncat out2\ncat out3\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa>out1>out2>out3\ncat out1\ncat out2\ncat out3\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat < out1 < out2 < out3\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa>out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat <out1<out2<out3\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat <out1<out2<out3\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\ncat < out1 > out2\ncat < out2\nrm -rf out1 out2\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '<< OUT\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e '<<OUT\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat <not_exist<out2<out3\necho $?\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat <out1<not_exist<out3\necho $?\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat <out1<out2<not_exist\necho $?\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\necho bbbbbbbbbbb > out2\necho ccccccccccc > out3\ncat < out1 < out2 < not_exist\necho $?\nrm -rf out1 out2 out3\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo aaaaaaaaaaa > out1\n< out1 tr a b | tr b c | tr c d\necho $?\nrm -rf out1\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ping -c1 8.8.8.8 > out1\ncat out1 | grep ms | more\necho $?\nrm -rf out1\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'cat | cat | ls\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'export USER=potato\necho $?\necho $USER\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $USER\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "$USER"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "echo "\"\'\$USER\'"\"\necho $?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo "\'\"\$USER\"\'"\necho $?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $USER $ $USER $\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $ $USER $ $USER\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $USER123\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $U\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $USE\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo $USERR\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo ~\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "~"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "echo '~'\necho \$?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo ~nope\necho \$?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo nope~\necho \$?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo ~/\necho \$?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "echo ~ ~nope ~ nope~ ~ ~nope~ ~ 'quote~' ~ \"dquote~\" ~/path '~/quote' \"~/dquote\"\necho \$?\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "=============================================================="
echo -e 'echo oi || echo io\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ech oi || echo io\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo oi || ech io\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "=============================================================="
echo -e 'echo  "oi" || echo "io"\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'ech "oi" || "echo  io"\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo  "oi" || "ech io"\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo  "oi\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "echo  'oi\nexit" | $MINISHELL
echo -e "=============================================================="
echo -e "=============================================================="
echo -e '(echo  1 || echo  2)\necho 1\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e "=============================================================="
echo -e 'echo ()\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "()"\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "||><|;()|"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo ||><|;()|\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo ||><|;()|)\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "||><|;()|)"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo >||><|;()|<\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo <||><|;()|>\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo <||>>><<<|;()|>\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo "<||>>><<<|;()|>"\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo ||\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo | |\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo |\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo ;;\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo > <\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'echo >\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'env | grep USER\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'env | grep PATH\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'top -bn 1\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'env ls\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'env TESTE=1 env | grep TESTE\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'env\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
echo -e 'unset ?\necho $?\nexit' | $MINISHELL
echo -e "=============================================================="
