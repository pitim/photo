sudo apt update
sudo apt full-upgrade 
sudo apt-get install git cups wiringpi build-essential libcups2-dev libcupsimage2-dev
cd
git clone https://github.com/adafruit/zj-58
cd zj-58
make
sudo ./install
sudo raspi-config 
sudo lpadmin -p ZJ-58 -E -v serial:/dev/ttyAMA0?baud=9600 -m zjiang/ZJ-58.ppd
sudo lpoptions -d ZJ-58
sudo lpadmin -p ZJ-58 -E -v serial:/dev/ttyUSB0?baud=9600 -m zjiang/ZJ-58.ppd
sudo lpoptions -d ZJ-58
sudo shutdown -h now
lp cover.jpg -fit-to-size
sudo reboot
lp cover.jpg --fit-to-size
lp cover.jpg 
sudo shutdown -h now
sudo lpadmin -p ZJ-58 -E -v serial:/dev/ttyAMA0?baud=9600 -m zjiang/ZJ-58.ppd
sudo lpoptions -d ZJ-58
lp cover.jpg 
sudo reboot
ls
lpi cover.jpg 
lp cover.jpg 
sudo lpadmin -p ZJ-58 -E -v serial:/dev/ttyAMA0?baud=9600 -m zjiang/ZJ-58.ppd
lp cover.jpg 
sudo lpoptions -d ZJ-58
lp cover.jpg 
sudo raspi-config 
lp cover.jpg 
sudo lpadmin -p ZJ-58 -E -v serial:/dev/ttyUSB0?baud=9600 -m zjiang/ZJ-58.ppd
sudo lpoptions -d ZJ-58
sudo raspi-config 
                     ls
rm cover.jpg 
ls
cd Adafruit_Python_SSD1306/
ls
python 3 setup.py 
python3 setup.py 
git status
git checkout
python3 setup.py 
python3 setup.py install
sudo python3 setup.py install
sudo apt-get install build-essential python-dev python-pip
sudo apt-get install build-essential python3-dev python-pip
sudo apt-get install build-essential python3-dev python3-pip
sudo apt-get install python3-imaging python3-smbus
sudo apt-get install python3-pil python3-smbus
sudo python3 setup.py install
cd
mkdir tof save orig
ls
sudo raspi-config 
ls
python3 ph.py 
sudo pip3 install gpiozero
sudo apt install python3-gpiozero 
python3 ph.py 
sudo nano /etc/rc.local 
sudo reboot
ls
cd orig
ls
cd
ls
cd save
ls
cd
ls
cd Adafruit_Python_SSD1306/
ls
nano phcd
cd
nano ph.py 
nano /etc/rc.local 
exit
ls
exit
