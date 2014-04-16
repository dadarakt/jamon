socket = connect("192.168.1.100", 8007)

println(socket, "Dickbutt")

messageBuffer = readline(socket)

fs = open("log.txt", "w")
write(fs, messageBuffer)
close(fs)