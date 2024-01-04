cd `pwd -P`
date > ^d

python main.py 2>&1 | tee ^a
#poetry run python main.py 2>&1  | tee ^a


date > ^dd
