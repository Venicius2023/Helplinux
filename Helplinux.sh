#! usr/bin/env bash

echo "Bem Vindo"
sleep 4
clear

# Definição de cores
VERMELHO='\e[31m'
VERDE='\e[32m'
AMARELO='\e[33m'
SEM_COR='\e[0m'

    opecoes=("Atualizar Arquivos" "Corrigir Pacotes" "Software Populares" "Sair" )

echo -e "${VERDE}----MENU PRINCIPAL----${SEM_COR}"
select ESCOLHA in "${opecoes[@]}"
    do
        case  $ESCOLHA in
            "Atualizar Arquivos")
                echo "Atualizando os arquivos..."
                sudo apt update
                sudo apt upgrade
                clear
                ;;

            "Corrigir Pacotes")
                echo "Corrigindo Pacotes Corrompidos"
                sudo dpkg --configure -a
                clear
                ;;

            "Software Populares")
                op=("Libreoffice" "Gimp" "Kdenlive" "VLC" "Inkscape" "Sair")
            echo -e "${VERDE}------MENU SECUNDARIO------${SEM_COR}"
             select SELECT in "${op[@]}"
                do
                 case $SELECT in 
                    "Libreoffice")
                        echo "Instalando Libreoffice..."
                        sudo apt install libreoffice
                        clear
                        ;;
                    
                    "Gimp")
                        echo "Instalando Gimp..."
                        sudo apt install gimp
                        clear
                        ;;
                    
                    "Kdenlive")
                        echo "Instalando Kdenlive..."
                        sudo apt install kdenlive
                        clear
                        ;;
                    
                    "VLC")
                        echo "Instalando vlc..."
                        sudo apt install vlc
                        clear
                        ;;

                    "Inkscape")
                        echo "Instalando Inkscape..."
                        sudo apt install inkscape
                        clear
                        ;;

                    "Sair")
                        echo "saindo"
                        break
                        ;;

                    *)

                        echo -e "${VERMELHO}Opção inválida ($REPLY). Tente novamente.${SEM_COR}"
                        ;;
                        esac 
                        echo "___________________________________________"
                        echo "Precione ENTER para continuar ou escolha um número:"
                    done
                        ;;


            "Sair")
                echo "saindo"
                break
              
                ;;

            *)

                echo -e "${VERMELHO}($REPLY) Não é uma Opção Valida. Tente Novamente.${SEM_COR}"
                ;;
    esac 
    echo -e "${AMARELO}___________________________________________${SEM_COR}"
    echo  "Precione ENTER para continuar ou escolha um número:"
done

