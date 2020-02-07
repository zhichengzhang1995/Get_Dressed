INPUT = ""

all:
	cd ruby/test && ruby get_dressed_test.rb
	cd python/test && python get_dressed_test.py

customized_test_ruby:
	cd ruby/test && ruby get_dressed_your_own_test.rb $(INPUT)

default_test_ruby:
	cd ruby/test && ruby get_dressed_test.rb

default_test_python:
	cd python/test && python get_dressed_test.py

customized_test_python:
	cd python/test && python get_dressed_your_own_test.py $(INPUT)

clean_python:
	cd python/lib && rm *.pyc