-- This function yoinked from here: https://www.codegrepper.com/code-examples/lua/wait+function+lua
local function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
    end

-- Variable definition.
local running = true
local guessing = true
local answer = 0
local max = nil
local guess = nil
local count = 0
local continuePrompt

-- Main gameplay loop
while (running)
do
    -- Reset guessing
    guessing = true
    
    -- Get max number in error trapped loop.
    while (max == nil or max <= 1)
    do
        print("Please enter a max number, greater then 1: ")
        max = tonumber(io.read())
        --print("max: " .. max)
    end

    -- Determine random number to guess towards.
    math.randomseed(os.time())
    math.random(); math.random(); math.random()
    answer = math.random(max)
    --print("answer = " .. answer)
    --wait(10)

    -- Loop for when the player guesses.
    while (guessing)
    do
        -- Error trapping loop for the users guess.
        while (guess == nil)
        do
            print("Try and guess the number!")
            guess = tonumber(io.read())
        end

        -- Iterate count of guesses.
        count = count + 1

        -- If guess is correct, state as such, share the number of guesses, and leave the guessing loop.
        if (guess == answer)
        then
            print("Good job! You got it in " .. count .. " guesses!")
            guessing = false

        -- If guess is incorrect, share which direction the player should guess in.
        elseif (guess < answer)
        then
            print("Sorry! The answer is greater. Try again!")
        else
            print("Sorry! The answer is lower. Try again!")
        end
        guess = nil
    end

    -- Get whether or not the player wants to continue in an error trapping loop.
    while(not(continuePrompt == "Y" or continuePrompt == "y" or continuePrompt == "n" or continuePrompt == "N"))
    do
      print("Would you like to try again? (y/n)")
      continuePrompt = io.read()
    end

    -- If the player does want to play again, reset variables, and return to beginning of gameplay loop.
    if(continuePrompt == "Y" or continuePrompt == "y")
    then
      print("Great! Starting over...\n")
      --guessing = true
      max = nil
      continuePrompt = ""
      count = 0

    -- Else, thank the player and leave the main gameplay loop after a little bit.
    else
      print("Thank you for playing!")
      running = false
      wait(3)
    end
end