import sys
from python_vicon import PyVicon

def main(sysargs):
    
    # open Vicon connection
    print ("Test Vicon DLL")
    client = PyVicon()
    print(client.myversion())
    return 0

if __name__ == '__main__':
    exit(main(sys.argv))
