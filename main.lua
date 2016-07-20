io.stdout:setvbuf'no' 

soft = require "soft" --require the library

function love.load()
  
  love.window.setTitle("Click anywhere")
  
  player = {
    x = soft:new(love.graphics.getWidth()*.5),
    y = soft:new(love.graphics.getHeight()*.5)
  }
  
end

function love.update(dt)
  
  soft:update(dt)
  
end

function love.draw()
  
  love.graphics.setBackgroundColor(0, 0, 0)
  
  love.graphics.setColor(50, 50, 50, 100)
  love.graphics.rectangle("fill", player.x:gt()-25, player.y:gt()-25, 50, 50)
  
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player.x:g()-25, player.y:g()-25, 50, 50)
  
end

function love.mousepressed(x, y, button)
  player.x:to(x)
  player.y:to(y)
end