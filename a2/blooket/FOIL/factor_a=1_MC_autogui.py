from time import sleep
from random import sample, randint, choices
from math import floor, ceil, sqrt
from pyautogui import click, Point, write, keyUp, press

# time.sleep(5)
# print(position())
PAUSE = 1 #wait after each click

# points taken at 100% zoom
# wide as possible without sidebar (approx half screen)

add_que = [118, 725]
que_txt = [459, 373]
ran_ord = [373, 224]
qt_drop = [484, 227]
qt_mc = [420, 485] #after QT_drop
qt_ta = [423, 530] #after QT_drop
save = [716, 224]
iu_pop = [142, 305] #image uploader
iu_uaf = [421, 451]
math = [142, 377]
# \sqrt_ and \frac_ (space starts, right arrow gets to next)
# \pm_\infty
math1 = [141, 586]
math2 = [493, 584]
math3 = [142, 723]
math4 = [494, 722]
mat_ins = [667, 289]
ee_box = [317, 276]
check1 = [126, 538]
check2 = [477, 538]
check3 = [127, 675]
check4 = [478, 676]
degree = [361, 504]
frac = [269, 447]
sqrtkey = [267, 505]
pm = [508, 371]
infty = [683, 372]
pi = [625, 374]
save = [726, 225]
cancel = [609, 228]
a1t = [276, 552]
ta_a1 = [429, 602]
AAA = [429, 670]

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
    a = sample(list(range(1,11)),1)[0]*sample([-1,1],1)[0]
    b = sample(list(range(1,11)),1)[0]*sample([-1,1],1)[0]
    que = quadstr([1,a+b,a*b])
    ans = sorted([a,b])
    W1 = [-a,b]
    W2 = [a,-b]
    W3 = [-a,-b]
    wa1 = [a-3,b+3]
    wa2 = [a-2,b+2]
    wa3 = [a-1,b+1]
    wa4 = [a+1,b-1]
    wa5 = [a+2,b-2]
    wa6 = [a+3,b-3]
    wa7 = [a+4,b-4]
    wa8 = [a-4,b+4]
    wa9 = [a+5,b-5]
    wa10 = [a-5,b+5]
    wb1 = [1,a*b]
    wb2 = [2,round(a*b/2)]
    wb3 = [3,round(a*b/3)]
    wb4 = [4,round(a*b/4)]
    wb5 = [floor(sqrt(abs(a*b))*a*b/abs(a*b)),ceil(sqrt(abs(a*b)))]
    wb6 = [-1,-a*b]
    wb7 = [-2,-round(a*b/2)]
    wb8 = [-3,-round(a*b/3)]
    wb9 = [-4,-round(a*b/4)]
    wb10 = [-floor(sqrt(abs(a*b))*a*b/abs(a*b)),-ceil(sqrt(abs(a*b)))]
    xx = sample(list(range(-10,11)),2)
    xx2 = sample(list(range(-10,11)),2)
    xx3 = sample(list(range(-10,11)),2)
    xx4 = sample(list(range(-10,11)),2)
    xx5 = sample(list(range(-10,11)),2)
    xx6 = sample(list(range(-10,11)),2)
    
    ws = [W1,W2,W3,wa1,wa2,wa3,wa4,wa5,wa6,wa7,wa8,wa9,wa10,wb1,wb2,wb3,wb4,wb5,wb6,wb7,wb8,wb9,wb10,
    xx,xx2,xx3,xx4,xx5,xx6]
    allposs = [ans]
    wrongs = []
    for ww in ws:
        ww = sorted(ww)
        if ww not in allposs and 0 not in ww and min(ww)>-11 and max(ww)<11:
            allposs.append(ww)
            wrongs.append(ww)
    
    ans = sample(ans,2)
    wro = sample(wrongs,3)
    wro1 = sample(wro[0],2)
    wro2 = sample(wro[1],2)
    wro3 = sample(wro[2],2)
    alldem = [ans,wro1,wro2,wro3]
    order = sample([0,1,2,3],4)
    corr = order.index(0)
    ac1 = plbstr([1,alldem[order[0]][0],1,alldem[order[0]][1]])
    ac2 = plbstr([1,alldem[order[1]][0],1,alldem[order[1]][1]])
    ac3 = plbstr([1,alldem[order[2]][0],1,alldem[order[2]][1]])
    ac4 = plbstr([1,alldem[order[3]][0],1,alldem[order[3]][1]])
    
    wi = randint(1,2)
    val = [1,a+b,a*b][wi]
    st = 0.3
    click(add_que)
    time.sleep(1)
    write("Factor.",interval=0.02)
    click(math)
    time.sleep(1)
    pressem(que)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    click(math1)
    time.sleep(1)
    pressem(ac1)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    
    click(math2)
    time.sleep(1)
    pressem(ac2)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    
    click(math3)
    time.sleep(1)
    pressem(ac3)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    
    click(math4)
    time.sleep(1)
    pressem(ac4)
    time.sleep(0.2)
    click(mat_ins)
    time.sleep(1)
    
    if corr==0:
        click(check1)
    if corr==1:
        click(check2)
    if corr==2:
        click(check3)
    if corr==3:
        click(check4)
    time.sleep(0.3)
    click(save)
    time.sleep(2)




