import pyautogui as pag
import time
# time.sleep(5)
print(pag.position())
# print(pag.size())
pag.PAUSE = 0.8 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

file = open("p2_solutions.txt", "r")
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
Save_pos = pag.Point(711,228)
AAA = pag.Point(440,671)

pag.click(switch_win_pos)
for i in range(1000):
    ifn = "q{:03d}.png".format(i+1)
    ans = sols[i]
    ans1 = ans.split("#")[0]
    ans2 = ans.split("#")[1]
    if(ans != "NaN"):
        pag.click(add_q_pos)
        time.sleep(0.1)
        pag.click(qt_pos)
        time.sleep(0.1)
        pag.typewrite('Factor.',interval=0)
        time.sleep(0.1)
        pag.click(MC_to_type_pos)
        time.sleep(0.1)
        pag.click(TA_pos)
        time.sleep(0.1)
        pag.click(Image_pos)
        time.sleep(0.1)
        pag.click(Upload_a_File_pos)
        time.sleep(2)
        pag.typewrite(ifn,interval=0.1)
        pag.click(Open_pos)
        time.sleep(0.1)
        pag.click(Answer_pos)
        time.sleep(0.1)
        pag.typewrite(ans1,interval=0)
        time.sleep(0.1)
        if ans1 != ans2:
            pag.click(AAA)
            time.sleep(0.1)
            pag.click(AAA)
            time.sleep(0.1)
            pag.typewrite(ans2,interval=0)
            time.sleep(0.1)
        pag.click(Save_pos)
        time.sleep(8)


