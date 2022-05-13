-- Game Function
-- This function yoinked from here: https://www.codegrepper.com/code-examples/lua/wait+function+lua
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
  end

return { wait = wait }
