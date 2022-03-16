---@diagnostic disable: trailing-space

-- Function Defines
local function add(n1, n2)
  return n1+n2;
end
  
local function subtract(n1, n2)
  return n1-n2;
end
    
local function multiply(n1, n2)
  return n1*n2;
end
    
local function divide(n1, n2)
  return n1/n2;
end

-- This function yoinked from here: https://www.codegrepper.com/code-examples/lua/wait+function+lua
local function wait(seconds)
  local start = os.time()
  repeat until os.time() > start + seconds
end

-- Variable defines
local n1 = 0
local n2 = 0
n1 = nil
n2 = nil
local prompt = 0
prompt = nil
local running = true
while (running)

-- Main loop
do
    
  -- Main Menu prompt
  print("What operation you like to do? ")
  print("1) Addition ")
  print("2) Subtraction ")
  print("3) Multiplication ")
  print("4) Division")
  print("5) Leave")
  
  -- Get choice in error trapped loop.
  while(prompt == nil or (prompt > 5 or prompt < 1))
  do
    print("Please enter what you want: ")
    prompt = tonumber(io.read())
  end 
  
  -- If the user wants to leave, break out of loop.
  if (prompt == 5)
  then
    running = false
    print("Thank you!")
    wait(3)
    break
  end
  
  -- Else, get the two numbers for the calulations.
  while(n1 == nil)
  do
    print("Please enter #1: ")
    n1 = tonumber(io.read())
  end 
    
  while(n2 == nil)
  do
    print("Please enter #2: ")
    n2 = tonumber(io.read())
  end 
  
  -- Depending on choice, print result of calling the function alongside the calculation sign.
  if (prompt == 1)
  then
    print("Result of " .. n1 .. " + " .. n2 .. ": " .. add(n1, n2) .. ".")
      
  elseif (prompt == 2)
  then
    print("Result of " .. n1 .. " - " .. n2 .. ": " .. subtract(n1, n2) .. ".")
        
  elseif (prompt == 3)
  then
    print("Result of " .. n1 .. " * " .. n2 .. ": " .. multiply(n1, n2) .. ".")
          
  elseif (prompt == 4)
  then
    print("Result of " .. n1 .. " / " .. n2 .. ": " .. divide(n1, n2) .. ".")
            
  else 
    print("Not acceptable answer.")
  end
  
  n1 = nil
  n2 = nil
  prompt = nil
  
end