import pyautogui as pag
import time
# time.sleep(5)
# print(pag.position())
# print(pag.size())
pag.PAUSE = 0.2 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

file = open("p1/data.txt", "r")
lines = file.readlines()
data = []
for line in lines:
    data.append(line.strip())
file.close()

#1  abs(x)
#2  sqrt(x)
#3  x^2
#4  cbrt(x)
#5  x^3
#6  2^x
#7  3^x
#8  log2(x)
#9  log3(x)
#10 1/x
#11 cos(x)
#12 sin(x)
def typeeq(i):
    time.sleep(0.01)
    pag.keyUp("fn")
    time.sleep(0.01)
    if(i=="1"):
        pag.typewrite("y=|x|")
    elif(i=="2"):
        pag.typewrite("y=")
        pag.click(pag.Point(273,507))
        pag.typewrite("x")
    elif(i=="3"):
        pag.typewrite("y=x^2")
    elif(i=="4"):
        pag.typewrite("y=")
        pag.click(pag.Point(153,562))
        pag.typewrite("3")
        pag.press("right")
        pag.typewrite("x")
    elif(i=="5"):
        pag.typewrite("y=x^3")
    elif(i=="6"):
        pag.typewrite("y=2^x")
    elif(i=="7"):
        pag.typewrite("y=3^x")
    elif(i=="8"):
        pag.typewrite("y=")
        pag.click(pag.Point(213,741))
        pag.typewrite("2")
        pag.press("right")
        pag.typewrite("(x)")
    elif(i=="9"):
        pag.typewrite("y=")
        pag.click(pag.Point(213,741))
        pag.typewrite("3")
        pag.press("right")
        pag.typewrite("(x)")
    elif(i=="10"):
        pag.typewrite("y=")
        pag.click(pag.Point(272,445))
        pag.typewrite("1")
        pag.press("right")
        pag.typewrite("x")
    elif(i=="11"):
        pag.typewrite("y=cos(x)")
    elif(i=="12"):
        pag.typewrite("y=sin(x)")

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


pag.click(switch_win_pos)

for i in range(200):
    pag.keyUp("fn")
    ifn = "p_{:04d}.png".format(i+1)
    dat = data[i]
    dat = dat.split("&")
    ans1 = dat[0]
    ans2 = dat[1]
    ans3 = dat[2]
    ans4 = dat[3]
    wo = int(dat[4])
    pag.click(add_q_pos)
    pag.click(qt_pos)
    pag.typewrite("Identify the parent function.",interval=0)
    # pag.click(MC_to_type_pos)
    # pag.click(TA_pos)
    pag.click(Image_pos)
    pag.click(Upload_a_File_pos)
    time.sleep(0.7)
    pag.typewrite(ifn,interval=0.1)
    pag.click(Open_pos)
    time.sleep(0.7)
    pag.click(math1)
    typeeq(ans1)
    pag.click(mat_ins)
    time.sleep(0.7)
    pag.click(math2)
    typeeq(ans2)
    pag.click(mat_ins)
    time.sleep(0.7)
    pag.click(math3)
    typeeq(ans3)
    pag.click(mat_ins)
    time.sleep(0.7)
    pag.click(math4)
    typeeq(ans4)
    pag.click(mat_ins)
    time.sleep(0.7)
    pag.click(cpos[wo-1])
    pag.click(Answer_pos)
    pag.typewrite(ans1,interval=0.05)
    # pag.click(AAA)
    # pag.click(TA2)
    # pag.typewrite(ans2,interval=0.05)
    pag.click(Save_pos)
    time.sleep(3)


