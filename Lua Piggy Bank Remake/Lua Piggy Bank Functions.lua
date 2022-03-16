-- Piggy Bank Function
-- Calculates the total based on input and conversion factors.
function calculateTotalReturn(p, n, d, q) 
	local toReturn = ((p)+(n * 5) + (d * 10) + (q * 25)) / 100.0;
	return toReturn;
end

-- Gets total, then divides by weeks saved to give rate at which money is saved.
function calculateSavingRateReturn(timeSaved, p, n, d, q) 
    local toReturn = (calculateTotalReturn(p, n, d, q)) / timeSaved
    return toReturn;
end
    
-- Returns 52 times the saving rate to show the amount saved in a year.
function calculateSavingsPerYearReturn(timeSaved, p, n, d, q)
    local toReturn = 52 * calculateSavingRateReturn(timeSaved, p, n, d, q);
    return toReturn;
end

function printSavingsStatement(timeSaved, p, n, d, q, name) 

        -- First chunk
        print(name .. ", you have saved $" .. calculateTotalReturn(p, n, d, q) .. " overall.\nThat's $" .. calculateSavingRateReturn(timeSaved, p, n, d, q) .. " a week!";
        // If saving for more then a year, calculate the specific amount saved in the year.
        if (timeSaved > 52) {
            cout  "\nGreat job, " .. name .. ", you saved $" .. (calculateSavingRateReturn(timeSaved, p, n, d, q) * 52) .. " in one year! You're still on track now to save the same amount in total in the new year!";
        }
        // If saving for EXACTLY a year, pr a special message.
        elseif (timeSaved == 52) 
            then
            cout  "\nGreat job, " .. name .. ", you saved $" .. calculateTotalReturn(p, n, d, q) .. " this past year! Can you save that much again in this next year?";
        } -- Else, just pr how much you could save this year.
        else 
        then
            print("\nGreat job, " .. name .. ", at this rate, you can save $" .. calculateSavingsPerYearReturn(timeSaved, p, n, d, q) .. " this year!")
        end
    
    end

-- This function yoinked from here: https://www.codegrepper.com/code-examples/lua/wait+function+lua
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
  end

return { calculateTotalReturn = calculateTotalReturn, wait = wait }
