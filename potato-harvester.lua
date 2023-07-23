-- Lua Script for CC: Tweaked that automatically harvests fully grown potatoes and drops them.
-- Inspired by basically the same thing that Michael Reeves did in the OTV SMP.
 
-- Function to find potatoes' index in the turtle's inventory and returns it.
function potatoCheck()
    for slot = 1, 16, 1 do
        local item = turtle.getItemDetail(slot)
        if(item ~= nil) then
            if(item.name == "minecraft:potato") then
            return slot
            end
        end
    end
end
 
-- Infinite while loop to keep the program running.
while(true)
do
    isBlock, data = turtle.inspect()
 
    if (isBlock)
    then
        -- Checks if potatoes are mature.
        -- If yes, turtle harvests, finds potatoes' position in inventory and selects it,
        -- plants a new one, then drops the remaining potatoes.
        if (data.state.age == 7)
        then
            turtle.dig()
            turtle.select(potatoCheck())
            turtle.place()
            turtle.dropDown()
        end
    
        -- Turns turtle left after checking/harvesting potato
        turtle.turnLeft()
        
        -- Checks if there is an obstacle.
        -- If true, turtle goes back until it hits another obstacle where it then stops and reruns the program.
        -- If false, turtle moves forward, turns right, and reruns the program.
        if (not turtle.detect())
        then
            turtle.forward()
            turtle.turnRight()
        else
            turtle.turnRight()
            turtle.turnRight()
 
            while(not turtle.detect())
            do
                turtle.forward()
            end
 
            turtle.turnLeft()
            
            -- To save fuel, the turtle will sleep for 3 minutes and start the run again
            sleep(180)
        end
    end
end