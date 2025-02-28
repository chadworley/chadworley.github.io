from pyautogui import *
import time
from random import sample, randint

# time.sleep(5)
print(position())
PAUSE = 2 #wait after each click

# points taken at 100% zoom
# wide as possible without sidebar

add_que = Point(x=118, y=725)
que_txt = Point(x=459, y=373)
ran_ord = Point(x=373, y=224)
qt_drop = Point(x=484, y=227)
qt_mc = Point(x=420, y=485) #after QT_drop
qt_ta = Point(x=423, y=530) #after QT_drop
save = Point(x=716, y=224)
iu_pop = Point(x=142, y=305) #image uploader
iu_uaf = Point(x=421, y=451)
math = Point(x=142, y=377)
# \sqrt_ and \frac_ (space starts, right arrow gets to next)
# \pm_\infty
math1 = Point(x=141, y=586)
math2 = Point(x=493, y=584)
math3 = Point(x=142, y=723)
math4 = Point(x=494, y=722)
mat_ins = Point(x=667, y=289)
ee_box = Point(x=317, y=276)
check1 = Point(x=126, y=538)
check2 = Point(x=477, y=538)
check3 = Point(x=127, y=675)
check4 = Point(x=478, y=676)
degree = Point(x=361, y=504)
frac = Point(x=269, y=447)
sqrt = Point(x=267, y=505)
pm = Point(x=508, y=371)
infty = Point(x=683, y=372)
pi = Point(x=625, y=374)
save = Point(x=726, y=225)
cancel = Point(x=609, y=228)

def pressem(a):
    for i in a:
        if(i=="#"):
            press("right")
        elif(i=="°"):
            click(degree)
        elif(i=="U"):
            click(pm)
            click(infty)
        elif(i=="F"):
            click(frac)
        elif(i=="S"):
            click(sqrt)
        elif(i=="P"):
            click(pi)
        else:
            write(i)
        time.sleep(0.1)


ths = ["0","FP#6#","FP#4#","FP#3#","FP#2#",
        "F2P#3#","F3P#4#","F5P#6#","P",
        "F7P#6#","F5P#4#","F4P#3#","F3P#2#",
        "F5P#3#","F7P#4#","F11P#6#","2P"]
        
degs = ["0°","30°","45°","60°","90°","120°","135°","150°","180°",
        "210°","225°","240°","270°","300°","315°","330°","360°"]

dis = [0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330,360]

sins = ["0","F1#2#","FS2##2#","FS3##2#","1",
         "FS3##2#","FS2##2#","F1#2#","0",
         "-F1#2#","-FS2##2#","-FS3##2#","-1",
         "-FS3##2#","-FS2##2#","-F1#2#","0"]

coss = ["1","FS3##2#","FS2##2#","F1#2#","0",
         "-F1#2#","-FS2##2#","-FS3##2#","-1",
         "-FS3##2#","-FS2##2#","-F1#2#","0",
         "F1#2#","FS2##2#","FS3##2#","1"]

nanstr = "U"
tans = ["0","FS3##3#","1","S3#",nanstr,
         "-S3#","-1","-FS3##3#","0",
         "FS3##3#","1","S3#",nanstr,
         "-S3#","-1","-FS3##3#","0"]

allpos = ["-S3#","-1","-FS3##2#","-FS2##2#","-FS3##3#","-F1#2#","0",
            "F1#2#","FS3##3#","FS2##2#","FS3##2#","1","S3#",nanstr]


click(add_que)
for i in range(1000):
    angi = randint(0,len(ths)-1)
    rd = randint(1,2)
    if rd==1:
        ang = ths[angi]
    else:
        ang = degs[angi]
    sct = randint(1,3)
    if sct==1:
        tf = "sin"
        an = sins[angi]
    if sct==2:
        tf = "cos"
        an = coss[angi]
    if sct==3:
        tf = "tan"
        an = tans[angi]
    
    ci = allpos.index(an)
    api = list(range(len(allpos)))
    api.remove(ci)
    wi = sample(api,3)
    alli = wi+[ci]
    allimix = sample(alli,4)
    wr = allimix.index(ci)
    
    q = tf+"("+ang+")"
    a1 = allpos[allimix[0]]
    a2 = allpos[allimix[1]]
    a3 = allpos[allimix[2]]
    a4 = allpos[allimix[3]]
    
    st = 0.1
    time.sleep(st)
    click(add_que)
    time.sleep(st)
    click(math)
    time.sleep(st)
    pressem(q)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(math1)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    pressem(a1)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    click(math2)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    pressem(a2)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    click(math3)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    pressem(a3)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    click(math4)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    click(ee_box)
    time.sleep(st)
    pressem(a4)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    if wr==0:
        click(check1)
    if wr==1:
        click(check2)
    if wr==2:
        click(check3)
    if wr==3:
        click(check4)
    click(save)
    time.sleep(1)

