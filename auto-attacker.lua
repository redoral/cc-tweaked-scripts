-- Lua Script for CC: Tweaked that automatically attacks mobs that are in front of the turtle.
-- Great for AFK XP Farming.
while(1)
do
    while(turtle.attack())
    do
        turtle.attack()
        sleep(0.5)
    end
 
    sleep(5)
end