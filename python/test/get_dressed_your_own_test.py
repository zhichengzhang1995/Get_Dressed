# -*- coding: utf-8 -*-
import sys
from sys import argv
sys.path.append('../')
from lib.get_dressed import *

def main():
    priority = " ".join(argv[1 : ])
    print (processTheDress(priority))

if __name__ == '__main__':
    main()