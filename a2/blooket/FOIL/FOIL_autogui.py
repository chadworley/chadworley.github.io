from pyautogui import *
import time
from random import sample, randint, choices

# time.sleep(5)
print(position())
PAUSE = 3 #wait after each click

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

def pressem(a):
    for i in a:
        if(i=="#"):
            press("right")
        elif(i=="F"):
            click(frac)
        else:
            write(i)
        time.sleep(0.05)

def quadstr(cf): 
    #Get quadratic polynomial string from coefficients
    #For blooket, I'm using "#" to mean right arrow keystroke
    s = ""
    if cf[0] != 0:
        if abs(cf[0])==1:
            s = s+"x^2#"
        elif abs(cf[0])==-1:
            s = s+"-x^2#"
        else:
            s = s+str(cf[0])+"x^2#"
        if cf[1] != 0:
            if abs(cf[1])==1:
                s = s+"+x"
            elif abs(cf[1])==-1:
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
        if abs(cf[1])==1:
                s = s+"x"
        elif abs(cf[1])==-1:
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
    ws = [quadstr([1,-a-b,a*b]),
          quadstr([1,-a-b,-a*b]),
          quadstr([1,a+b,-a*b]),
          quadstr([1,a*b,a+b]),
          quadstr([1,-a*b,a+b]),
          quadstr([1,-a*b,-a-b]),
          quadstr([1,a*b,-a-b]),
          quadstr([1,a-b,a*b]),
          quadstr([1,b-a,a*b]),
          quadstr([1,a+b-1,a*b]),
          quadstr([1,a+b+1,a*b]),
          quadstr([1,a+b,a*b-1]),
          quadstr([1,a+b,a*b+1]),
          quadstr([1,a+b,(a+1)*b]),
          quadstr([1,a+b,a*(b+1)]),
          quadstr([1,a+b,(a-1)*b]),
          quadstr([1,a+b,a*(b-1)]),
          quadstr([1,(a+1)*b,a+b,]),
          quadstr([1,a*(b+1),a+b]),
          quadstr([1,(a-1)*b,a+b]),
          quadstr([1,a*(b-1),a+b]),
          quadstr([1,a,b]),
          quadstr([1,b,a]),
          quadstr([1,0,a*b]),
          quadstr([1,0,a+b]),
          quadstr([a,0,b]),
          quadstr([b,0,a]),
          quadstr([1,a+b,b-a]),
          quadstr([1,a+b,a-b]),
          quadstr([a+b,0,a*b])
          ]
    was = []
    for ww in ws:
        if ww not in was and ww!=ans:
            was.append(ww)
    allposs = sample([ans]+sample(was,3),4)
    wo = allposs.index(ans)
    print(ans)
    que = plbstr([1,a,1,b])
    
    st = 0.3
    click(add_que)
    time.sleep(1)
    click(math)
    time.sleep(1)
    pressem(que)
    time.sleep(0.1)
    click(mat_ins)
    time.sleep(1)
    # enter math 1
    click(math1)
    time.sleep(1)
    pressem(allposs[0])
    time.sleep(0.1)
    click(mat_ins)
    time.sleep(1)
    if allposs[0]==ans:
        click(check1)
        time.sleep(0.1)
    # enter math 2
    click(math2)
    time.sleep(1)
    pressem(allposs[1])
    time.sleep(0.1)
    click(mat_ins)
    time.sleep(1)
    if allposs[1]==ans:
        click(check2)
        time.sleep(0.1)
    # enter math 3
    click(math3)
    time.sleep(1)
    pressem(allposs[2])
    time.sleep(0.1)
    click(mat_ins)
    time.sleep(1)
    if allposs[2]==ans:
        click(check3)
        time.sleep(0.1)
    # enter math 4
    click(math4)
    time.sleep(1)
    pressem(allposs[3])
    time.sleep(0.1)
    click(mat_ins)
    time.sleep(1)
    if allposs[3]==ans:
        click(check4)
        time.sleep(0.1)
    click(save)
    time.sleep(1.5)

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
