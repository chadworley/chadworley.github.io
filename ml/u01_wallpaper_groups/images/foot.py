
lines = []

with open("foot.txt") as foot:
    for line in foot:
        if(len(line.strip())>2):
            lines.append(line.strip())

xs = []
ys = []

for line in lines:
    pnts = line.split(" ")
    x1 = float(pnts[0].split(",")[0])
    y1 = float(pnts[0].split(",")[1])
    xx = [x1]
    yy = [y1]
    for i in range(2,len(pnts)):
        xx.append(float(pnts[i].split(",")[0])+xx[i-2])
        yy.append(float(pnts[i].split(",")[1])+yy[i-2])
    xs.append(xx)
    ys.append(yy)

xbig = []
ybig = []

for ii in xs:
    for jj in ii:
        xbig.append(jj)

for ii in ys:
    for jj in ii:
        ybig.append(jj)
        
xbar = sum(xbig)/len(xbig)  
ybar = sum(ybig)/len(ybig)

def myfunx(entry):
    return(entry-xbar)

def myfuny(entry):
    return(entry-ybar)

for i in range(1,len(xs)+1):
    xstr = ", ".join(map(str,map(myfunx,xs[i-1])))
    ystr = ", ".join(map(str,map(myfuny,ys[i-1])))
    print(f"x{i}=c({xstr})")
    print(f"y{i}=c({ystr})")

