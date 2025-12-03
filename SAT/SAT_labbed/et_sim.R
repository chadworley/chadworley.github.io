attempts = 3
qpa = 2
N = 100000

# for this sim, just assume each question has a 1/4 chance...

x = rbinom(N*attempts,qpa,0.25)
x = matrix(x,attempts)
y = apply(x,2,max)

hist(y)
print(mean(y)/qpa)




