-- Listening for a message
modem = peripheral.wrap("top")

modem.open(1)

while(true)
do
    event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")

    print("\nMESSAGE RECEIVED")
    print("------------------")
    print("Message: "..message)
    print("Distance: "..(senderDistance or "an unknown number of").." blocks.")
end