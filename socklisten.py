# Echo server program
import socket

HOST = '127.0.0.1'                 # Symbolic name meaning all available interfaces
PORT = 7778              # Arbitrary non-privileged port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(1)
conn, addr = s.accept()
print 'Connected by', addr
while 1:
    data = conn.recv(1024)
    if not data: break
    for n in range(len(data)):
	    print 'DATA %d = %d' % (n,ord(data[n]))
print "AFTER LOOP!"
conn.close()
