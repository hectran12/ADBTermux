import os
import time


ADB_INSTALL = "apt update > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1 && wget https://raw.githubusercontent.com/hectran12/ADBTermux/main/TermuxADBFiles/InstallTools.sh -q && bash InstallTools.sh"
ADB_UNINSTALL = "apt update > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1 && wget https://raw.githubusercontent.com/hectran12/ADBTermux/main/TermuxADBFiles/RemoveTools.sh -q && bash RemoveTools.sh"

def menu ():
    return [
        "Install ADB & Fastboot",
        "Uninstall ADB & Fastboot",
	]

m = menu()
for item in m:
    print(str(m.index(item) + 1) + ". " + item)

select = int(input("Select: "))
if select == 1:
    os.system(ADB_INSTALL)
elif select == 2:
    os.system(ADB_UNINSTALL)
else:
    print("Invalid selection")
