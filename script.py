import os
import time
os.system("clear")
i = 0
mouse = "left"
while 1 == 1:
    if(i % 5 == 0):
        if(mouse == "left"):
            mouse = "right"
        else:
            mouse = "left"
    i = i + 1
    os.system("bash /home/malav/mouseSh.sh " + mouse)
    time.sleep(1.5)
#    print (mouse)
