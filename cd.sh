#!/bin/bash

MINISHELL="./minishell"
#MINISHELL="valgrind --leak-check=full --show-leak-kinds=all --suppressions=./includes/readlinesupp.h ./minishell"
comando=0
function next()
{
	echo
	echo "                                            Press to Next -------------->"
	read END
	echo
}

make
clear
echo
echo "███╗   ███╗██╗███╗   ██╗██╗███████╗██╗  ██╗███████╗██╗     ██╗"
echo "████╗ ████║██║████╗  ██║██║██╔════╝██║  ██║██╔════╝██║     ██║"
echo "██╔████╔██║██║██╔██╗ ██║██║███████╗███████║█████╗  ██║     ██║"
echo "██║╚██╔╝██║██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██║     ██║"
echo "██║ ╚═╝ ██║██║██║ ╚████║██║███████║██║  ██║███████╗███████╗███████╗"
echo "╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝"
echo
next;clear

echo '  ██████╗ ██╗   ██╗ ██████╗ ████████╗███████╗███████╗'
echo ' ██╔═══██╗██║   ██║██╔═══██╗╚══██╔══╝██╔════╝██╔════╝'
echo ' ██║   ██║██║   ██║██║   ██║   ██║   █████╗  ███████╗'
echo ' ██║▄▄ ██║██║   ██║██║   ██║   ██║   ██╔══╝  ╚════██║'
echo ' ╚██████╔╝╚██████╔╝╚██████╔╝   ██║   ███████╗███████║'
echo '  ╚══▀▀═╝  ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝╚══════╝'

next
((comando++))#1
echo "🟢 $comando - Testando a linha recebida com aspas"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo "lucas dfjnfjjdnfdjn < > | $" \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#2
echo "🟢 $comando - Testando a linha recebida com aspas"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo "path = $HOME" \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#2
echo "🟢 $comando - Testando a linha recebida com aspas"
echo "<----------------------------------------------------------------------->"
echo
echo -e echo path = $HOME \necho Código de retorno = $?\nexit | $MINISHELL
echo

echo   "██████╗ ██╗   ██╗██╗██╗     ██████╗ ███████╗"
echo   "██╔══██╗██║   ██║██║██║     ██╔══██╗██╔════╝"
echo   "██████╔╝██║   ██║██║██║     ██║  ██║███████╗"
echo   "██╔══██╗██║   ██║██║██║     ██║  ██║╚════██║"
echo   "██████╔╝╚██████╔╝██║███████╗██████╔╝███████║"
echo   "╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝ ╚══════╝"
next;clear
echo          "██████╗  ██████╗  "
echo          "██╔═══╝  ██╔══██╗"
echo          "██║      ██║  ██║"
echo          "██║      ██║  ██║"
echo          "╚██████╗ ██████╔╝"
echo          " ╚═════╝ ╚═════╝ "


next
((comando++))#1
echo "🟢 $comando - Comando 'CD -' Primeiro acesso deve retornar erro"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd -\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#2
echo "🟢 $comando - Comando 'CD -' Duas vezes o acesso deve retornar erro"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd -\ncd -\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#3
echo "🟢 $comando - Comando 'CD -'
      Pasta valida, deve criar o OLDPWD e funcionar o cd -."
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd src\ncd -\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#4
echo "🟢 $comando - Comando 'CD'
   Pasta deve acessar o env '$ HOME' assim acessar o home definido"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#5
echo "🟢 $comando - Comando CD alterando o '$ HOME'
   Altera o Home assim ao acessar cd deve ir para o registro"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'export HOME=./libs\ncd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#6
echo "🟢 $comando - Comando CD"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#7
echo "🟢 $comando - Comando CD . deve permanecer na mesma pasta"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd .\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#8
echo "🟢 $comando - Comando CD ~ se não existir home
	volta pra hoome do sistema"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'unset HOME\ncd\ncd ~\npwd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#9
echo "🟢 $comando - Comando CD ./src path absoluto"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd ./src\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#10
echo "🟢 $comando - Comando CD ./src path relativo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd libs\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#11
echo "🟢 $comando - Comando CD libs path relativo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd libs\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#12
echo "🟢 $comando - Comando CD ~/ volta pro home"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd ~/\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#13
echo "🟢 $comando - Comando CD / volta pra raiz"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd /\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#14
echo "🟢 $comando - Comando CD PASTA1 PASTA 2 PASTA 3 varios argumentos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd PASTA1 PASTA 2 PASTA 3\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#15
echo "🟢 $comando - Comando CD PASTA1 pasta invalida"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd PASTA1\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#16
echo "🟢 $comando - Comando CD $ 'HOME' variavel tem que expandir"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd $HOME\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#17
echo "🟢 $comando - Comando CD $dfv variavel invalida tem que ir pra home"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd $dfv\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#18
echo "🟢 $comando - Comando CD Makefile retorna erro inda pra arquivo e não pasta"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd Makefile\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#19
echo "🟢 $comando - Comando CD src pasta bloqueada pra acesso"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'chmod 000 src\ncd src\necho Código de retorno = $?\nchmod 777 src\nexit' | $MINISHELL
echo

next
((comando++))#20
echo "🟢 $comando - Comando ls | cd | echo não muda a pasta "
echo "<----------------------------------------------------------------------->"
echo
echo -e 'ls | cd | echo não mudou a pasta\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#21
echo "🟢 $comando - Comando ls | cd  opd ods | echo retorna erro no cd"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'ls | cd opd ods| echo erro do cd \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#22
echo "🟢 $comando - Comando cd 'pasta com espaços' deve acessar"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'mkdir "pasta com espaços"\ncd "pasta com espaços"\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#23
echo "🟢 $comando - Comando cd './pasta com espaços' deve acessar path absoluto"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd "./pasta com espaços"\necho Código de retorno = $?\nexit' | $MINISHELL
rm -rf 'pasta com espaços'
echo

next
((comando++))#24
echo "🟢 $comando - Comando cd - removendo o OLDPWD deve criar no env um novo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'cd libs\ncd -\nunset OLDPWD\ncd -\ncd ~\ncd -\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#25
echo "🟢 $comando - Comando cd - removendo o PWD não pode afetar o cd"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'unset PWD\ncd $PWD\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next;clear
echo '███████╗ ██████╗██╗  ██╗ ██████╗ '
echo '██╔════╝██╔════╝██║  ██║██╔═══██╗'
echo '█████╗  ██║     ███████║██║   ██║'
echo '██╔══╝  ██║     ██╔══██║██║   ██║'
echo '███████╗╚██████╗██║  ██║╚██████╔╝'
echo '╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  '

next
((comando++))#26
echo "🟢 $comando - Comando echo só pula a linha"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#27
echo "🟢 $comando - Comando echo $ exibi o dollar"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo $\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#28
echo "🟢 $comando - Comando echo $0 exibi nome do bash no caso -minishell"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo $0\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#29
echo "🟢 $comando - Comando echo $PWD exibe o PWD mesmo excluindo o env"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'unset PWD\necho $PWD\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#30
echo "🟢 $comando - Comando echo -n não pula linha"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo -n\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#31
echo "🟢 $comando - Comando echo argumentos multiplos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo multiplos argumentos\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#32
echo "🟢 $comando - echo '$  HOME' "$  HOME" "'$  HOME'" '"$  HOME"'"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo '$HOME' "$HOME" "'$HOME'" '"$HOME"'\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#33
echo "🟢 $comando - echo '$  HOME' "$  HOME" "'$  HOME'" '"$  HOME"'"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'echo '$HOME' "$HOME" "'$HOME'" '"$HOME"'\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next;clear
echo '██╗   ██╗███╗   ██╗███████╗███████╗████████╗'
echo '██║   ██║████╗  ██║██╔════╝██╔════╝╚══██╔══╝'
echo '██║   ██║██╔██╗ ██║███████╗█████╗     ██║   '
echo '██║   ██║██║╚██╗██║╚════██║██╔══╝     ██║   '
echo '╚██████╔╝██║ ╚████║███████║███████╗   ██║   '
echo '╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝   ╚═╝    '
echo '   ██╗       ███████╗██╗  ██╗██████╗  ██████╗ ██████╗ ████████╗'
echo '   ██║       ██╔════╝╚██╗██╔╝██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝'
echo '████████╗    █████╗   ╚███╔╝ ██████╔╝██║   ██║██████╔╝   ██║   '
echo '██╔═██╔═╝    ██╔══╝   ██╔██╗ ██╔═══╝ ██║   ██║██╔══██╗   ██║   '
echo '██████║      ███████╗██╔╝ ██╗██║     ╚██████╔╝██║  ██║   ██║   '
echo '╚═════╝      ╚══════╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝  '
echo '   ██╗   ███████╗███╗   ██╗██╗   ██╗'
echo '   ██║   ██╔════╝████╗  ██║██║   ██║'
echo '████████╗█████╗  ██╔██╗ ██║██║   ██║'
echo '██╔═██╔═╝██╔══╝  ██║╚██╗██║╚██╗ ██╔╝'
echo '██████║  ███████╗██║ ╚████║ ╚████╔╝ '
echo '╚═════╝  ╚══════╝╚═╝  ╚═══╝  ╚═══╝  '
next

next
((comando++))#34
echo "🟢 $comando - env "
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#35
echo "🟢 $comando - UNSET DE PWD"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env | grep PWD\nunset PWD\nenv | grep PWD\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#36
echo "🟢 $comando - UNSET MULTIPLO PWD OLD PWD"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env | grep PWD\nunset OLDPWD PWD\nenv\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#37
echo "🟢 $comando - UNSET inexistente lucas"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env\nunset lucas PWD\nenv\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#38
echo "🟢 $comando - UNSET sem argumentos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'unset\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#39
echo "🟢 $comando - EXPORT ALTERANDO EXISTENTE"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env | grep HOME\nexport HOME=ricardo\nenv | grep HOME\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#40
echo "🟢 $comando - EXPORT sem argumentos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'export\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#41
echo "🟢 $comando - EXPORT com varios argumentos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'export lucas teste \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#42
echo "🟢 $comando - EXPORT formatação errada"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'export LUCAS;01588 \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#43
echo "🟢 $comando - EXPORT caracteres invalidos"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'export LUC*AS=01588 \necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
next;clear
echo '██████╗ ██╗    ██╗██████╗ '
echo '██╔══██╗██║    ██║██╔══██╗'
echo '██████╔╝██║ █╗ ██║██║  ██║'
echo '██╔═══╝ ██║███╗██║██║  ██║'
echo '██║     ╚███╔███╔╝██████╔╝'
echo '╚═╝      ╚══╝╚══╝ ╚═════╝ '

next
((comando++))#44
echo "🟢 $comando - PWD"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'pwd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#45
echo "🟢 $comando - PWD tem que funcionar mesmo excluindo o env"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'env | grep PWD\nunset PWD\nenv | grep PWD\npwd\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next
((comando++))#46
echo "🟢 $comando - PWD tem que funcionar mesmo excluindo o env"
echo "<----------------------------------------------------------------------->"
echo
echo -e '\nunset PWD\nenv | grep PWD\necho $PWD\necho Código de retorno = $?\nexit' | $MINISHELL
echo

next;clear
echo '███████╗██╗  ██╗██╗████████╗'
echo '██╔════╝╚██╗██╔╝██║╚══██╔══╝'
echo '█████╗   ╚███╔╝ ██║   ██║   '
echo '██╔══╝   ██╔██╗ ██║   ██║   '
echo '███████╗██╔╝ ██╗██║   ██║   '
echo '╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   '

next
((comando++))#47
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit 89' | $MINISHELL
echo $?

next
((comando++))#48
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit 35003' | $MINISHELL
echo $?

next
((comando++))#49
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit exit 33' | $MINISHELL
echo $?

next
((comando++))#50
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit 36 lod' | $MINISHELL
echo $?

next
((comando++))#51
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit lucas lod' | $MINISHELL
echo $?

next
((comando++))#52
echo "🟢 $comando - exit carrega o ultimo código de erro com sigo"
echo "<----------------------------------------------------------------------->"
echo
echo -e 'exit 10 20' | $MINISHELL
echo $?
























next
echo
echo "████████╗██╗  ██╗███████╗    ███████╗███╗   ██╗██████╗ "
echo "╚══██╔══╝██║  ██║██╔════╝    ██╔════╝████╗  ██║██╔══██╗"
echo "   ██║   ███████║█████╗      █████╗  ██╔██╗ ██║██║  ██║"
echo "   ██║   ██╔══██║██╔══╝      ██╔══╝  ██║╚██╗██║██║  ██║"
echo "   ██║   ██║  ██║███████╗    ███████╗██║ ╚████║██████╔╝"
echo
echo
next
clear

#""""
#''''
#ls
#lgh
#cd
#"''" funções com problema
#""
#''
#'"
#>>
#<<
#> // leak
#<
#<<<
#>>>
#>l
#<l inexistente
#<l bloqueado
#>pasta existente
#>>|
#<<|
#>|
#>|
#<>
#> lucas
#>> lucas abrir incremento
# >>
#> $PWD deve dar erro pois abre o ende atual e não arquivo
#> $PWD/arquivo  tem que criar o arquivo no caminho
#> 'lasd      sdf' o nome do arquivo deve ser igual ao digitado
#<< 'nsdkcn oijkko ' deve funcionar e ou não travar
