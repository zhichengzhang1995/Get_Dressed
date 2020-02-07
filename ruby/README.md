# QUESTION

You have to get dressed in the morning before going to work. Unfortunately, you only accept a space separated list of numbers to indicate article of clothing to don.

* 1 = hat
* 2 = pants
* 3 = shirt
* 4 = shoes
* 5 = socks

Rules: 
* You must put your socks on before your shoes
* You must put your pants on before your shoes
* You must put your shirt on before your hat
* A hat is optional
* An input value of 6 means "leave the house", and you must leave after getting dressed
* Any violation should output "fail" and stop immediately

Examples:

* Input: 5 1
* Output: socks, fail
* Input: 5 2 3 4 6
* Output: socks, pants, shirt, shoes, leave

# ENVIRONMENT
### Ruby
* Included in `./Ruby` directory

# INTRODUCTION
#### Here is the basic introduction to the project.
As you can say in the Question, the project is designed to process an Integer String and output the corresponding word String. The introduction will show the basic algorithm and design features.

## Algorithm:
The basic algorithm is very easy.  
* Basically, we will scan every number in the Integer String. And for every step, the algorithm would decide if this number is valid by checking the result list with the pre request condition list. If it is valid, then add the corresponding word into the result and keep going, or, add the "fail" to the result then break the program.  
* After we scan all the numbers and get no fail in scanning, we need to double-check the final result to see if it covers all the processes we need. And output the result String.  
### Step:
* Convert the Integer String to List
* Build the pre-request List base on the conditions
* Scan every number in the List
* If the corresponding pre-request List is covered by the result, add it to the result
* If the corresponding pre-request List is not covered by the result, add fail to the result, break
* Check whether the result String finishes all process
* If it is, the program is done
* If it is not, add fail to the result.
* Convert the result to String and return it.

## Ruby design features:
#### The project has the lib directory and test directory. This design is good for maintenance in the future.  
### lib
* The lib directory includes the algorithm, data structure, and other containers, but, not it only has the algorithm file.
* Different from Python, the Ruby design includes an object file, that the algorithm file will import this object file. 
  - This object is a substitute for the pre-request list getting function. 
  - The reason for using an object there is that I want to split the algorithm more. Even if the object file may increase the complexity of the design structure, but for the future update, I think the split files is a good idea. But I am not very familiar with the real industry, so, I want to try both methods. 
### test
* The test directory includes the test, it will import the lib and run the test cases. 
* The basic idea of this design is to avoid the mess of tests. 
* The following design can write the algorithms and tests in two different directories that can let the project goes clearly.
* The test directory has two different test files right now: 
  - The default test that can run the default test. It can be used in algorithm optimization, that after a programmer optimizes the algorithm, the test file can check if the algorithm still right. 
  - Another file is the customized test file that you can create your only test case.

# REQUREMENTS
### Mac OS
* Install homebrew: 
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* Install ruby: `brew install ruby`
* Optional - If you system lacks some dependencies, you may try run `pip install -r dependency.txt`. The txt file includes some basic modules you may need.

# RUN
## Ruby
#### Default test: 
* Run `make` or `make default`
#### Customized test: 
* Run `make customized_test INPUT="your costomized data"`
* Example: make customized_test INPUT="5 3 2 4 6"
* INPUT must like "3 2 5 4 6" or '3 2 5 4 6' that num + space + num...

# TESTS & RESULTS

* input = '5 1', output = 'socks, fail'

* input = '4 1', output = 'fail'

* input = '3 4 2 5 6', output = 'shirt, fail'

* input = '5 3 4 2 6', output = 'socks, shirt, fail'

* input = '5 2 1 4 3 6', output = 'socks, pants, fail'

* input = '3 2 5 1', output = 'shirt, pants, socks, hat, fail'

* input = '5 3 2 6 4', output = 'socks, shirt, pants, fail'

* input = '5 3 2 4 6', output = 'socks, shirt, pants, shoes, leave'

* input = '3 5 1 2 4 6', output = 'shirt, socks, hat, pants, shoes, leave'

* input = '3 2 5 4 1 6', output = 'shirt, pants, socks, shoes, hat, leave'

* input = '3 5 2 4 1 6', output = 'shirt, socks, pants, shoes, hat, leave'

* input = '5 2 3 4 1 6', output = 'socks, pants, shirt, shoes, hat, leave'