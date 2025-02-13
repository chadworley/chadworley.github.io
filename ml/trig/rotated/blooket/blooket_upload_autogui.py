import pyautogui as pag
import time
time.sleep(5)
print(pag.position())
# print(pag.size())
pag.PAUSE = 0.6 #wait after each click
# pyautogui.FAILSAFE = True #KEEP THIS TRUE

file = open("solutions.txt", "r")
lines = file.readlines()
sols = []
for line in lines:
    if(len(line.split(" "))>1):
        sols.append(line.split(" ")[1].strip())
file.close()
# print(sols)

for i in range(100):
    ifn = "q{:03d}.png".format(i+1)
    ans = sols[i]
    # print(ans)
    switch_win_pos = pag.Point(339,525)
    add_q_pos = pag.Point(108,783)
    MC_to_type_pos = pag.Point(464,225)
    TA_pos = pag.Point(410,532)
    Image_pos = pag.Point(136,307)
    Upload_a_File_pos = pag.Point(381,446)
    Open_pos = pag.Point(1023,619)
    Answer_pos = pag.Point(378,601)
    Save_pos = pag.Point(711,228)
    pag.click(switch_win_pos)
    pag.click(add_q_pos)
    pag.typewrite('Find the length or angle measure marked with an x. Type your answer using 3 significant figures. If the number is less than 1, use a leading 0. Angles are in RADIANS.',interval=0)
    pag.click(MC_to_type_pos)
    pag.click(TA_pos)
    pag.click(Image_pos)
    pag.click(Upload_a_File_pos)
    pag.typewrite(ifn,interval=0.1)
    pag.click(Open_pos)
    pag.click(Answer_pos)
    pag.typewrite(ans,interval=0.1)
    pag.click(Save_pos)
    time.sleep(4)


