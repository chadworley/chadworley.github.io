import pyautogui as pag
import time
# time.sleep(5)
# print(pag.position())
# print(pag.size())
pag.PAUSE = 0.2 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

switch_win_pos = pag.Point(339,525)
add_q_pos = pag.Point(98,760)
qt_pos = pag.Point(430,381)
MC_to_type_pos = pag.Point(464,225)
TA_pos = pag.Point(410,532)
Image_pos = pag.Point(136,307)
Upload_a_File_pos = pag.Point(381,446)
Open_pos = pag.Point(1023,619)
Answer_pos = pag.Point(378,601)
A1_pos = pag.Point(262,558)
A2_pos = pag.Point(565,557)
A3_pos = pag.Point(271,678)
A4_pos = pag.Point(580,670)
A1c_pos = pag.Point(124,545)
A2c_pos = pag.Point(485,534)
A3c_pos = pag.Point(126,678)
A4c_pos = pag.Point(485,675)
AAA = pag.Point(431, 669)
TA2 = pag.Point(421, 662)
cpos = [A1c_pos,A2c_pos,A3c_pos,A4c_pos]
Save_pos = pag.Point(711,228)
Math = pag.Point(x=145, y=377)
math1 = pag.Point(x=141, y=586)
math2 = pag.Point(x=493, y=584)
math3 = pag.Point(x=142, y=723)
math4 = pag.Point(x=494, y=722)
mat_ins = pag.Point(x=667, y=289)
ee_box = pag.Point(x=317, y=276)
check1 = pag.Point(x=126, y=538)
check2 = pag.Point(x=477, y=538)
check3 = pag.Point(x=127, y=675)
check4 = pag.Point(x=478, y=676)
degree = pag.Point(x=361, y=504)
fracbut = pag.Point(x=269, y=447)
sqrtbut = pag.Point(x=267, y=505)
pmbut = pag.Point(x=508, y=371)
inftybut = pag.Point(x=683, y=372)
pibut = pag.Point(x=625, y=374)

file = open("p4/data.txt", "r")
lines = file.readlines()
data = []
for line in lines:
    data.append(line.strip())
file.close()

def pressem(a):
    for i in a:
        pag.keyUp("fn")
        if(i=="#"):
            pag.press("right")
        elif(i=="S"):
            pag.typewrite("sin")
        elif(i=="C"):
            pag.typewrite("cos")
        elif(i=="F"):
            pag.click(fracbut)
        elif(i=="P"):
            pag.click(pibut)
        else:
            pag.press(i)

pag.click(switch_win_pos)

for i in range(5,300):
    dat = data[i]
    dat = dat.split("&")
    eq = dat[0]
    qu = dat[1]
    ans1 = dat[2]
    ans2 = dat[3]
    ans3 = dat[4]
    ans4 = dat[5]
    wo = int(dat[6])
    pag.click(add_q_pos)
    time.sleep(0.7)
    pag.click(qt_pos)
    time.sleep(0.2)
    pag.keyUp("fn")
    pag.typewrite(qu,interval=0.05)
    time.sleep(0.7)
    pag.click(Math)
    pressem(eq)
    pag.click(mat_ins)
    time.sleep(0.7)
    if qu!="At t=0 the wave is at...":
        pag.click(math1)
        pressem(ans1)
        pag.click(mat_ins)
        time.sleep(0.7)
        pag.click(math2)
        pressem(ans2)
        pag.click(mat_ins)
        time.sleep(0.7)
        pag.click(math3)
        pressem(ans3)
        pag.click(mat_ins)
        time.sleep(0.7)
        pag.click(math4)
        pressem(ans4)
        pag.click(mat_ins)
        time.sleep(0.7)
    else:
        pag.click(A1_pos)
        pag.keyUp("fn")
        pag.typewrite(ans1,interval=0.05)
        pag.click(A2_pos)
        pag.keyUp("fn")
        pag.typewrite(ans2,interval=0.05)
        pag.click(A3_pos)
        pag.keyUp("fn")
        pag.typewrite(ans3,interval=0.05)
        pag.click(A4_pos)
        pag.keyUp("fn")
        pag.typewrite(ans4,interval=0.05)
    pag.click(cpos[wo-1])
    pag.click(Save_pos)
    time.sleep(3)


