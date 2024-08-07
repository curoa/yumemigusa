cd `pwd -P`
date > ^d
#export $(grep -v \# ../.env | xargs)

stdbuf -i0 -o0 -e0 python main.py 2>&1 | tee ^a
#stdbuf -i0 -o0 -e0 poetry run python main.py 2>&1  | tee ^a


date > ^dd
