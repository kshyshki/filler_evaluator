if [ $# -eq 0 ];
then
    printf "\033[0;32mUSAGE\033[0m: sh play_with_all.sh [path to your map] [path to your player.filler]\n"
    printf "\033[0;31mIMPORTANT\033[0m: .filler - must present in name of your player\n"
    printf "\033[0;32mEXAMPLE\033[0m: sh play_with_all.sh maps/map00 players/carli.filler\n"
else
    sh tests.sh players/carli.filler $1 $2
    sh tests.sh players/superjeannot.filler $1 $2
    sh tests.sh players/abanlin.filler $1 $2
    sh tests.sh players/champely.filler $1 $2
    sh tests.sh players/grati.filler $1 $2
    sh tests.sh players/hcao.filler $1 $2
fi

