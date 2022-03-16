local pennies = nil
local nickels = nil
local dimes = nil
local quarters = nil
local timeSaved = nil
local name = "nil"

local piggyBank = require "Lua Piggy Bank Functions"

print ("Hello, there! What's your name? ")
name = io.read()

print("Hello, " .. name .. "!")

wait(2)

while(pennies == nil and pennies < 0)
do
    print("How many pennies do you have? ")
    pennies = io.read()
end

print("Great!\n")
while(nickels == nil and nickels < 0)
do
    print("How many nickels do you have? ")
    nickels = io.read()
end

print("Awesome.\n")
while(dimes == nil and dimes < 0)
do
    print("How many dimes do you have? ")
    dimes = io.read()
end

print("Super!\n")
while(quarters == nil and quarters < 0)
do
    print("How many quarters do you have? ")
    quarters = io.read()
end

print("We're almost done!\n")
while(timeSaved == nil and timeSaved < 1)
do
    print("How many weeks have you been saving, " .. name .. "? ")
    timeSaved = io.read()
end

print("All done! Let me do some math for you...\n\nHere are your totals per coin type, " .. name .. ":\nQuarters: $" .. (quarters * 25) / 100.0 .. ", from " .. quarters .. " quarters.\nDimes: $" .. (dimes * 10) / 100.0 .. ", from " .. dimes .. " dimes.\nNickels: $" .. (nickels * 5) / 100.0 .. ", from " .. nickels .. " nickels.\nPennies: $" .. pennies / 100.0 .. ", from " .. pennies .. " pennies.\n\n")

printSavingsStatement(timeSaved, pennies, nickels, dimes, quarters, name)

wait(2)
