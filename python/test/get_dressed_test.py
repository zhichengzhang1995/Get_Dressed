# -*- coding: utf-8 -*-
import sys
sys.path.append('../')
from lib.get_dressed import *

num = '5 1'
print ('')
print ("Test: ")
print ("  input = '5 1', output = 'socks, fail'")
assert processTheDress(num) == 'socks, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '4 1'
print ('')
print ("Test: ")
print ("  input = '4 1', output = 'fail'")
assert processTheDress(num) == 'fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '3 4 2 5 6'
print ('')
print ("Test: ")
print ("  input = '3 4 2 5 6', output = 'shirt, fail'")
assert processTheDress(num) == 'shirt, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '5 3 4 2 6'
print ('')
print ("Test: ")
print ("  input = '5 3 4 2 6', output = 'socks, shirt, fail'")
assert processTheDress(num) == 'socks, shirt, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '5 2 1 4 3 6'
print ('')
print ("Test: ")
print ("  input = '5 2 1 4 3 6', output = 'socks, pants, fail'")
assert processTheDress(num) == 'socks, pants, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '3 2 5 1'
print ('')
print ("Test: ")
print ("  input = '3 2 5 1', output = 'shirt, pants, socks, hat, fail'")
assert processTheDress(num) == 'shirt, pants, socks, hat, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '5 3 2 6 4'
print ('')
print ("Test: ")
print ("  input = '5 3 2 6 4', output = 'socks, shirt, pants, fail'")
assert processTheDress(num) == 'socks, shirt, pants, fail'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '5 3 2 4 6'
print ('')
print ("Test: ")
print ("  input = '5 3 2 4 6', output = 'socks, shirt, pants, shoes, leave'")
assert processTheDress(num) == 'socks, shirt, pants, shoes, leave'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '3 5 1 2 4 6'
print ('')
print ("Test: ")
print ("  input = '3 5 1 2 4 6', output = 'shirt, socks, hat, pants, shoes, leave'")
assert processTheDress(num) == 'shirt, socks, hat, pants, shoes, leave'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '3 2 5 4 1 6'
print ('')
print ("Test: ")
print ("  input = '3 2 5 4 1 6', output = 'shirt, pants, socks, shoes, hat, leave'")
assert processTheDress(num) == 'shirt, pants, socks, shoes, hat, leave'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '3 5 2 4 1 6'
print ('')
print ("Test: ")
print ("  input = '3 5 2 4 1 6', output = 'shirt, socks, pants, shoes, hat, leave'")
assert processTheDress(num) == 'shirt, socks, pants, shoes, hat, leave'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')

num = '5 2 3 4 1 6'
print ('')
print ("Test: ")
print ("  input = '5 2 3 4 1 6', output = 'socks, pants, shirt, shoes, hat, leave' ")
assert processTheDress(num) == 'socks, pants, shirt, shoes, hat, leave'
print ("  \033[32mTest Passed √\033[0m")
print ('-----------------------------------------------------')