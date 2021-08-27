log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Tue":
            print(line)


sales_reports(log_file)

# QUESTION 1
# 1. Read over the code in process.py file and add comments explaining what you think each line is doing. Recall that in Python, you can specify a comment using an octothorpe (#).
# ANSWER TO QUESTION 1
# line 1: the code on line 1 is to open the 'um-server-01.txt' that is included in the folder. We need to open it in order to create any function code that is based on the file.

# line 4: the 'def' on line 4 has the same meaning as 'function' in JavaScript. Therefore, the code from line 4 - 9 run as a function to the opened file. 

# line 5: here is the 'for in' loop. This runs a loop function on the opened file.

# line 6: the rstrip() is to remove any trailing characters specified as argument. 

# line 7: this code is to give value to the 'day' variable by defining the value.

# line 8: this is an 'if' function.mro

# line 9: this code is to print the 'line' if the day is 'Tuesday'.


# QUESTION 2
# 2. Change the script to display sales info for Monday instead of Tuesday.
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Thu":
            print(line)


sales_reports(log_file)
