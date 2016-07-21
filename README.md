soft
==============

soft is a LÖVE library that replaces normal variable assigning (var = value) with smooth lerping ( var:to(value) ).

Setup
----------------

```lua
local soft = require "soft" --require the library
```

Usage
----------------

Create variable and transition it
```lua
function love.load()
  x = soft:new(200) --initialize variable with value
  x:to(400)
end
```

Update soft
```lua
function love.update(dt)
  soft:update(dt)
end
```

Get variable
```lua
function love.draw()
  love.graphics.rectangle("fill", x:get(), 100, 50, 50)
end
```

Methods
----------------

Update soft
```lua
soft:update(dt)
```

Create variable
```lua
variable = soft:new(value)
```

Set variable value
```lua
variable:set(value, params) --if params.reset == true, variable's target will also be set to value
v-> variable:s(value, params)
```

Set variable target
```lua
variable:to(value, params) --default params.speed = 5
v-> variable:t(value, params)
```

Set transition speed
```lua
variable:setSpeed(speed)
```

Get variable
```lua
variable:get(target) --if target == true, :get() will return :getTarget()
v-> variable:g(target)

variable:getTarget()
v-> variable:gt()
```
