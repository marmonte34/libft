clear
norminette | egrep -B1 'Error|Warning' >check_norm

printf "\e[1;33m[NORMINETTE]: \e[0m"

if [ -s check_norm ]
then
	printf "\e[1;31m[KO]\e[0m\n"
	cat check_norm | egrep 'Error|Warning'
else
	printf "\e[1;32m[OK]\e[0m\n"
fi

rm check_norm

gcc -Wall -Wextra -Werror $1 -o program
echo "\033[1;36m[COMPILED]\033[0m"
./program
rm -rf program