from pyautogui import *
import time
from random import sample, randint, choices

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
a1t = Point(x=276, y=552)

def pressem(a):
    for i in a:
        if(i=="#"):
            press("right")
        elif(i=="F"):
            click(frac)
        else:
            write(i)
        time.sleep(0.1)


eqt1 = ["RAx+SB"] #["RAx+SB","SB+RAx"]
eqt2 = ["Fx#RA#+SB"] #["FRx#A#+SB","SB+RFx#A#"]
eqt3 = ["SB(x+RA)"] #["SB(x+RA)","SB(RA+x)","(x+RA)*(SB)","(RA+x)*(SB)"]
eqt4 = ["Fx+RA#SB#"] #["SF(RA+x)#B#","FS(x+RA)#B#"]

click(add_que)
time.sleep(1)
for i in range(1000):
    wht = randint(1,4)
    AB = sample([2,3,4,5,6,7,8,9],2)
    A = AB[0]*sample([-1,1],1)[0]
    B = AB[1]*sample([-1,1],1)[0]
    print(A)
    print(B)
    while(1):
        x = sample(list(range(-20,-1))+list(range(2,21)),1)[0]
        if wht==1:
          y = A*x+B
          eqst = str(int(y))+" = "+sample(eqt1,1)[0]
        elif wht==2:
          y = x/A+B
          eqst = str(int(y))+" = "+sample(eqt2,1)[0]
        elif wht==3:
          y = B*(x+A)
          eqst = str(int(y))+" = "+sample(eqt3,1)[0]
        elif wht==4:
          y = (x+A)/B
          eqst = str(int(y))+" = "+sample(eqt4,1)[0]
        if y%1==0 and abs(y)>0 and abs(y)<70:
            break
    eqst = eqst.replace("A",str(abs(A)))
    eqst = eqst.replace("B",str(abs(B)))
    if(A>=0):
        eqst = eqst.replace("R","")
    else:
        eqst = eqst.replace("R","-")
    if(B>=0):
        eqst = eqst.replace("S","")
    else:
        eqst = eqst.replace("S","-")
    eqst = eqst.replace("+-","-")
    
    q = eqst
    a = str(x)
    
    st = 0.3
    time.sleep(st)
    click(add_que)
    time.sleep(st)
    time.sleep(st)
    click(math)
    time.sleep(st)
    pressem(q)
    time.sleep(st)
    click(mat_ins)
    time.sleep(st)
    click(a1t)
    pressem(a)
    time.sleep(st)
    click(qt_drop)
    time.sleep(st)
    click(qt_ta)
    time.sleep(st)
    click(save)
    time.sleep(1)
