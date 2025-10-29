import pyautogui as pag
import time
# time.sleep(5)
print(pag.position())
# print(pag.size())
pag.PAUSE = 0.8 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

file = open("p1_sols.txt", "r")
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
A1 = pag.Point(289,556)
A2 = pag.Point(649,556)
A3 = pag.Point(275,693)
A4 = pag.Point(627,690)
A1c = pag.Point(128,538)
A2c = pag.Point(481,538)
A3c = pag.Point(126,676)
A4c = pag.Point(481,676)
Ac = [A1c,A2c,A3c,A4c]
Save_pos = pag.Point(711,228)

pag.click(switch_win_pos)
for i in range(91,1000):
    ifn = "q{:03d}.png".format(i+1)
    ans = int(sols[i])
    pag.click(add_q_pos)
    pag.click(qt_pos)
    pag.typewrite('Which transformation is used?',interval=0)
    # pag.click(MC_to_type_pos)
    # pag.click(TA_pos)
    pag.click(A1)
    pag.typewrite("Translation",interval=0)
    pag.click(A2)
    pag.typewrite("Rotation",interval=0)
    pag.click(A3)
    pag.typewrite("Mirror",interval=0)
    pag.click(A4)
    pag.typewrite("Glide",interval=0)
    pag.click(Ac[ans-1])
    pag.click(Image_pos)
    pag.click(Upload_a_File_pos)
    time.sleep(3)
    pag.typewrite(ifn,interval=0.1)
    pag.click(Open_pos)
    time.sleep(3)
    # pag.click(Answer_pos)
    # pag.typewrite(ans,interval=0)
    pag.click(Save_pos)
    time.sleep(8)


