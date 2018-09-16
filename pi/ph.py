from gpiozero import  LED, Button, Buzzer
from time import sleep, time
from os import system
from signal import pause
import Adafruit_SSD1306
from PIL import Image


RST = 24
xshutter = Button(16)
xhalt = Button(21, hold_time=4)
xled = LED(5)
bz = Buzzer(10)
bz.beep(0.01,0.01,4)

# Flash LED on startup to indicate ready state
for i in range(0,5):
    xled.on()
    sleep(0.2)
    xled.off()
    sleep(0.2)

disp = Adafruit_SSD1306.SSD1306_128_64(rst=RST)
disp.begin()
tname="xx"
t = 0
def takapik():
    global tname
    global t
    t = round(time())
    xled.on()
    tname = str(round(time()))+".jpg"
    system("raspistill -n -t 300 -w 384 -h 511 -o /home/pi/orig/"+tname)
    xled.off()
    sleep(0.2)
    system("convert /home/pi/orig/"+tname+" -rotate '90' -resize 85x64 -dither FloydSteinberg -remap pattern:gray10 /home/pi/x.jpg")
    system("convert /home/pi/bl1.jpg /home/pi/x.jpg /home/pi/bl2.jpg +append /home/pi/x.jpg")
    disp.clear()
    image = Image.open('/home/pi/x.jpg').convert('1')
    disp.image(image)
    disp.display()
    system("convert /home/pi/orig/"+tname+" -dither FloydSteinberg -remap pattern:gray10 /home/pi/tof/" + tname)
    xled.on()
    sleep(0.2)
    xled.off()

def printapik():
    global tname
    global t
    if round(time())-t <= 20:
        system('lp /home/pi/tof/'+tname)
        sleep(5)
        system("mv /home/pi/tof/"+tname+" /home/pi/save/"+tname)
    disp.clear()
    image = Image.open('/home/pi/fullbl.jpg').convert('1')
    disp.image(image)
    disp.display()

def shutdown():
    bz.beep(0.01,0.01, 4)
    system('sudo shutdown -h now')

xhalt.when_pressed = printapik
xhalt.when_held = shutdown
xshutter.when_pressed = takapik

pause()
