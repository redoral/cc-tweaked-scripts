while true do
    -- Clear after/reset cursor each try 
    term.clear()
    term.setCursorPos(1, 1)

    -- Prompt user for password 
    print("Please Enter Password:")
    input = read("*")

     -- Validate password 
    if input == "4123" then
        -- Open door if password is correct
        redstone.setOutput("bottom", true) 
        -- Close door after 5 seconds
        sleep(5)
        redstone.setOutput("bottom", false)
    end
end