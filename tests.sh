num_player=1
num_tests=5
iterator=0

for ((i=0; i<=30; i++));
do
    printf "\033[0;33m%s\033[0m" "-"
    printf "\033[0;34m%s\033[0m" "+"
done
printf "\033[0;33m%s\n\033[0m" "-"

printf "You : \033[0;32m-p1\033[0m | map: \033[0;32m$2\033[0m| opponent: \033[0;32m$1\033[0m\n"
printf "%s\n" "+----------------------------+"
printf "| %.6s | %6.6s | %.8s |\n" "Result" "You" "Opponent"
printf "%s\n" "+----------------------------+"

while [ $iterator -lt $num_tests ]
do
    sh choose_winer.sh $(./filler_vm -p2 $1 -p1 $3 -q -f $2 \
    | grep -e '== O fin:' -e '== X fin:' | cut -d ' ' -f 4 | tr '\n' ' ') $1 $num_player
    iterator=$(($iterator+1))
done
printf "%s\n"

num_player=2
iterator=0
printf "You : \033[0;32m-p2\033[0m | map: \033[0;32m$2\033[0m | oponent: \033[0;32m$1\033[0m\n"
printf "%s\n" "+----------------------------+"
printf "| %.6s | %6.6s | %.8s |\n" "Result" "You" "Opponent"
printf "%s\n" "+----------------------------+"

while [ $iterator -lt $num_tests ]
do
    sh choose_winer.sh $(./filler_vm -p1 $1 -p2 $3 -q -f $2 \
    | grep -e '== O fin:' -e '== X fin:' | cut -d ' ' -f 4 | tr '\n' ' ') $1 $num_player
    iterator=$(($iterator+1))
done