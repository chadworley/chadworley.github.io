import pyautogui as pag
print(pag.position())


pag.click(pag.Point(368,292))
pag.typewrite("y=")
pag.click(pag.Point(272,445))
pag.typewrite("1")
pag.press("right")
pag.typewrite("x")
