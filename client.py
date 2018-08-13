import asyncio
import sys
import socket
import errno

# check args
if len(sys.argv) != 3:
    raise ValueError("usage: client <ipaddress> <port>")

serv = (sys.argv[1], int(sys.argv[2]))

# set client nonblocking
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(serv)
client.setblocking(0)

# stdin
def read_input():
    data = sys.stdin.readline()
    # EOF
    if not data:
        client.shutdown(socket.SHUT_WR)
        loop.remove_reader(sys.stdin.fileno())
    else:
        try:
            client.send(data.encode())
        except OSError as e:
            # ignore these two error
            if e.errno != errno.EWOULDBLOCK and e.errno != errno.EAGAIN:
                raise

# socket
def read_sock():
    try:
        data = client.recv(1024)
        # EOF
        if not data:
            loop.remove_reader(client.fileno())
            loop.stop()
        else:
            print(data.decode(), end = '')
    except OSError as e:
        if e.errno != errno.EWOULDBLOCK and e.errno != errno.EAGAIN:
            raise       

# event register
loop = asyncio.get_event_loop()
loop.add_reader(sys.stdin.fileno(), read_input)
loop.add_reader(client.fileno(), read_sock)

# run
loop.run_forever()

# close
client.close()
loop.close()