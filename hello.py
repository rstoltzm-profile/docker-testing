import time
import sys

duration = 5

print("hello docker!")
print("... waiting " + str(duration) + " seconds ...")


#sys.stdout.flush()
time.sleep(duration)

print("goodbye docker!")