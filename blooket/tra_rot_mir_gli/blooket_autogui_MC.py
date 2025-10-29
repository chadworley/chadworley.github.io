## NOT DONE!

import pyautogui as pag
import time
# time.sleep(5)
print(pag.position())
# print(pag.size())
pag.PAUSE = 0.8 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

file = open("solutions_p2.txt", "r")
lines = file.readlines()
sols = []
for line in lines:
    sols.append(line.strip())
file.close()

switch_win_pos = pag.Point(339,525)
add_q_pos = pag.Point(108,760)
qt_pos = pag.Point(430,381)
MC_to_type_pos = pag.Point(464,225)
TA_pos = pag.Point(410,532)
Image_pos = pag.Point(136,307)
Upload_a_File_pos = pag.Point(381,446)
Open_pos = pag.Point(1023,619)
Answer_pos = pag.Point(378,601)
cpos = [A1c_pos,A2c_pos,A3c_pos,A4c_pos]
Save_pos = pag.Point(711,228)

pag.click(switch_win_pos)
for i in range(1000):
    ifn = "q{:03d}.png".format(i+1)
    ans = sols[i]
    pag.click(add_q_pos)
    pag.click(qt_pos)
    pag.typewrite('Evaluate.',interval=0)
    pag.click(MC_to_type_pos)
    pag.click(TA_pos)
    pag.click(Image_pos)
    pag.click(Upload_a_File_pos)
    time.sleep(2)
    pag.typewrite(ifn,interval=0.1)
    pag.click(Open_pos)
    pag.click(Answer_pos)
    pag.typewrite(ans,interval=0)
    pag.click(Save_pos)
    time.sleep(6)


