from pyautogui import *
import time
from random import sample, randint, choices

# time.sleep(5)
print(position())
PAUSE = 1 #wait after each click

# points taken at 100% zoom
# wide as possible without sidebar (approx half screen)

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
ta_a1 = Point(x=429, y=602)

def pressem(a):
    for i in a:
        keyUp("fn")
        if(i=="#"):
            press("right")
        else:
            press(i)
        time.sleep(0.01)

def quadstr(cf): 
    #Get quadratic polynomial string from coefficients
    #For blooket, I'm using "#" to mean right arrow keystroke
    s = ""
    if cf[0] != 0:
        if cf[0]==1:
            s = s+"x^2#"
        elif cf[0]==-1:
            s = s+"-x^2#"
        else:
            s = s+str(cf[0])+"x^2#"
        if cf[1] != 0:
            if cf[1]==1:
                s = s+"+x"
            elif cf[1]==-1:
                s = s+"-x"
            elif cf[1]>0:
                s = s+"+"+str(cf[1])+"x"
            else:
                s = s+str(cf[1])+"x"
        if cf[2] != 0:
            if cf[2]>0:
                s = s+"+"+str(cf[2])
            else:
                s = s+str(cf[2])
    elif cf[1] != 0:
        if cf[1]==1:
                s = s+"x"
        elif cf[1]==-1:
            s = s+"-x"
        elif cf[1]>0:
            s = s+str(cf[1])+"x"
        else:
            s = s+str(cf[1])+"x"
        if cf[2] != 0:
            if cf[2]>0:
                s = s+"+"+str(cf[2])
            else:
                s = s+str(cf[2])
    else:
        s = cf[2]
    return(s)
        
def plbstr(nums): #product of two linear binomial 
    a = nums[0]
    b = nums[1]
    c = nums[2]
    d = nums[3]
    s = "({a}x+<b>)({c}x+<d>)"
    s = s.replace("a",str(a))
    s = s.replace("b",str(b))
    s = s.replace("c",str(c))
    s = s.replace("d",str(d))
    s = s.replace("{1}x","x")
    s = s.replace("{-1}x","-x")
    s = s.replace("{0}x+","")
    s = s.replace("{0}x-","-")
    s = s.replace("+<0>","")
    s = s.replace("-<0>","")
    s = s.replace("{","")
    s = s.replace("}","")
    s = s.replace("<","")
    s = s.replace(">","")
    s = s.replace("+-","-")
    return(s)


click(add_que)
time.sleep(0.5)
for i in range(1000):
    a = sample(list(range(1,9)),1)[0]*sample([-1,1],1)[0]
    b = sample(list(range(1,9)),1)[0]*sample([-1,1],1)[0]
    
    ans = quadstr([1,a+b,a*b])
    que = plbstr([1,a,1,b])+" = Ax^2#+Bx+C"
    
    wi = randint(1,2)
    unk = ["A","B","C"][wi]
    val = [1,a+b,a*b][wi]
    
    st = 0.3
    click(add_que)
    time.sleep(1)
    write("The equality is true for any x.  "+unk+" = ?",interval=0.02)
    click(math)
    time.sleep(1)
    pressem(que)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    click(qt_drop)
    time.sleep(0.5)
    click(qt_ta)
    time.sleep(0.5)
    click(ta_a1)
    write(str(val))
    click(save)
    time.sleep(1)

# time.sleep(st)
# time.sleep(st)
# pressem(q)
# time.sleep(st)
# click(mat_ins)
# time.sleep(st)
# click(a1t)
# pressem(a)
# time.sleep(st)
# click(qt_drop)
# time.sleep(st)
# click(qt_ta)
# time.sleep(st)
# click(save)
# time.sleep(1.5)
