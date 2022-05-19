#!/bin/bash
clear
bar(){
	echo -e "\e[3;35m"
	echo -ne '>>>                       [20%]\r'
	sleep 2
	echo -ne '>>>>>>>                   [40%]\r'
	sleep 2
	echo -ne '>>>>>>>>>>>>>>            [60%]\r'
	sleep 2
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
	sleep 2
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
	echo -ne '\n'
}
echo -e "\e[0;35m"
figlet APKTOOL
echo -e "
	\e[3;34m[\e[3;35m01\e[3;34m] \e[3;32minstalar apktool
	\e[3;34m[\e[3;35m02\e[3;34m] \e[3;32minstalar openjdk 8
	\e[3;34m[\e[3;35m99\e[3;34m] \e[3;32mexit\e[3;34m
"
read -p "selecciona > " s

case $s in
	01 | 1)
	echo -e "\e[3;34mcomenzando instalacion..."
	bar
	wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool &> /dev/null
	chmod 777 apktool
	mv apktool_2.6.1.jar apktool.jar &> /dev/null
	mv apktool $PREFIX/bin &> /dev/null
	mv apktool.jar $PREFIX/bin &> /dev/null
	if [ -e $PREFIX/bin/apktool ]; then
	echo -e "\n\e[3;32mapktool se instalo correctamente ;)"
	echo -e "\nregresando al menu."
	sleep 2
	bash apktool_in_termux.sh
	else
	echo -e "\n\e[3;31mapktool no se instalo :("
	fi
	;;
	02 | 2)
	wget https://raw.githubusercontent.com/MasterDevX/java/master/installjava &> /dev/null
	echo -e "\e[3;34mcomenzando instalacion..."
	bar
	bash installjava
	rm -rf installjava
	echo -e "\nregresando al menu."
	sleep 2
	bash apktool_in_termux.sh
	;;
	99)
	echo -e "\n\e[3;35mgracias por usar, adios ;)"
esac
