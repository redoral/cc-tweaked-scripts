-- Sending a message
modem = peripheral.wrap("top")
 
print("\nEnter channel number: ")
channel = tonumber(read())

print("Enter message: ")
message = read()
 
modem.transmit(channel, channel, message)
print("\nMessage sent to channel: "..channel)