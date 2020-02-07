#!/usr/bin/ruby
require_relative 'obj_DressPre'

def processTheDress(priority)

  # @input {String} priority
  # @return {String} dressed

  # Closet
  closet = ["", "hat", "pants", "shirt", "shoes", "socks", "leave"]
  # finished process, including Integers
  finished = []
  # Return result
  dressed = []
  
  # Convert the String into array of Integers
  tasks = priority.split(' ').map(&:to_i)

  tasks.each do |nextProcess|

    # Check nextProcess in [1, 6]
    if nextProcess < 1 or nextProcess > 6
      dressed << 'fail'
      return dressed.join(', ')
    end

    # Append the nextProcess to finished tasks
    finished << nextProcess

    # Get the pre-request tasks
    pre = DressPre.new(nextProcess)
    pre.getPre

    # Check whether the task has left
    if dressed.include?('leave')
      dressed << 'fail'
      return dressed.join(', ')
    end

    # Check whether the task has been done
    if dressed.include?(closet[nextProcess])
      dressed << 'fail'
      return dressed.join(', ')
    end

    # Check whether finished tasks list meets the pre-request
    if (pre.pre - finished).empty?
      dressed << closet[nextProcess]
    else
      # Return if fail
      dressed << 'fail'
      return dressed.join(', ')
    end
  end

  # If no return before, leave must be included in finished for a valid return
  unless finished.include?(6)
    dressed << 'fail'
  end

  # Convert the array of Integers into String
  return dressed.join(', ')
end