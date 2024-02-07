import argparse
from pprint import pprint as pp
from pprint import pformat as pf

if __name__ == '__main__':
    parser = argparse.ArgumentParser("cmd", description="This is hogehoge")
    args = parser.parse_args()


    print('\033[32m' + 'end' + '\033[0m') # ]] fix indent for vim

