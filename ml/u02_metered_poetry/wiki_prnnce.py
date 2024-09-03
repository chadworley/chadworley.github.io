# f = {"g","gg","Ggg"}
# f.add("g")
# print(f)


with open("cmudict-0.7b") as f:
    prnnce = f.readlines()

pdict = {}

for line in prnnce:
    if line[0].isalpha():
        wrd = line.split(" ")[0].split("(")[0]
        if wrd in pdict:
            pdict[wrd].append(" ".join(line.strip().split(" ")[1:]).strip())
        else:
            pdict[wrd] = [" ".join(line.strip().split(" ")[1:]).strip()]

# print(pdict)

with open("wrd_list_wikip.txt") as f:
    wl = f.readlines()
wikiwrds = {}
for line in wl:
    sl = line.split()
    for wrd in sl:
        if wrd.isalpha():
            if wrd.islower():
                if wrd.upper() in pdict:
                    wikiwrds[wrd] = pdict[wrd.upper()]

print(len(pdict))
print(len(wikiwrds))
print(wikiwrds)



