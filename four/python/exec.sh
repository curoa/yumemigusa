cd `pwd -P`

python main.py 2>&1 | tee ^a
#poetry run python main.py 2>&1  | tee ^a
