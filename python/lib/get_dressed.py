def dressPre(nextProcess):

    # For different cloth, pre-request is different

    if nextProcess == 'hat':
        return [3]
    elif nextProcess == 'pants':
        return [2]
    elif nextProcess == 'shirt':
        return [3]
    elif nextProcess == 'shoes':
        return [5, 2]
    elif nextProcess == 'socks':
        return [5]
    elif nextProcess == 'leave':
        return [2, 3, 4, 5]
    else:
        return []

def processTheDress(priority):

    # @input {String} priority
    # @return {String} dressed

    # Closet
    closet = ["", "hat", "pants", "shirt", "shoes", "socks", "leave"]
    # finished process, including Integers
    finished = []
    # Return result
    dressed = []

    # Convert the String into array of Integers
    tasks = [int(x) for x in priority.split(" ")]

    for nextProcess in tasks:
        
        # Check nextProcess in [1, 6]
        if nextProcess < 1 or nextProcess > 6:
            dressed.append('fail')
            return ", ".join(dressed)

        # Append the nextProcess to finished tasks
        finished.append(nextProcess)

        # Get the pre-request tasks
        pre = dressPre(closet[nextProcess])

        # Check whether the task has left
        if 'leave' in dressed:
            dressed.append('fail')
            return ", ".join(dressed)

        # Check whether the task has been done
        if closet[nextProcess] in dressed:
            dressed.append('fail')
            return ", ".join(dressed)

        # Check whether finished tasks list meets the pre-request
        if (set(pre) <= set(finished)):
            dressed.append(closet[nextProcess])
        else:
            # Return if fail
            dressed.append('fail')
            return ", ".join(dressed)

    # If no return before, leave must be included in finished for a valid return
    if not 6 in finished:
        dressed.append('fail')

    # Convert the array of Integers into String
    return ", ".join(dressed)