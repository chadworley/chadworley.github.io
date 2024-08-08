sr = 48000
t = seq(0,1,length.out=sr)
y = sin(2*pi*440*t)

cat(y)