require "subclass/padding"
require "subclass/class"

sWidth, sHeight = 1280, 640
local screenSpeed = 0
menuItems = {}

function love.load()
  --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248)
  love.graphics.setMode(sWidth, sHeight, false, false, 0)
  
  require "scenes/menu"
  scene = menu:new()
end

function love.update(dt)
  if scene.update then
    scene:update(dt)
  end
end

function love.draw()
  if scene.draw then
    scene:draw()
  end
end

function love.keypressed(key, unicode)
  if scene.keypressed then
    scene:keypressed(key, unicode)
  end
end

function love.keyreleased(key)
  if scene.keyreleased then
    scene:keyreleased(key)
  end
end

function love.mousepressed(x, y, button)
  if scene.mousepressed then
    scene:mousepressed(x, y, button)
  end
end

function love.mousereleased(x, y, button)
  if scene.mousereleased then
    scene:mousereleased(x, y, button)
  end
end

function add(shape1, shape2, collision)
  local sString1, sString2 = nil, nil

  if shape1.getString then
    sString1 = shape1:getString()
  end
  if shape2.getString then
    sString2 = shape2:getString()
  end

  if sString1 == "brick" then
    shape1:getObject():collide(shape2)
  elseif sString2 == "brick" then
    shape2:getObject():collide(shape1)
  else
    if shape1.getObject then
      if shape1:getObject().collide then
	shape1:getObject():collide(shape2)
      end
    end
    if shape2.getObject then
      if shape2:getObject().collide then
	shape2:getObject():collide(shape1)
      end
    end
  end

end

function persist(shape1, shape2, collision)
  if shape1.getObject then
    if shape1:getObject().persist then
      shape1:getObject():persist(shape2)
    end
  end
  if shape2.getObject then
    if shape2:getObject().persist then
      shape2:getObject():persist(shape1)
    end
  end
end

function remove(shape1, shape2, collision)
  if shape1.getObject then
    if shape1:getObject().remove then
      shape1:getObject():remove(shape2)
    end
  end
  if shape2.getObject then
    if shape2:getObject().remove then
      shape2:getObject():remove(shape1)
    end
  end
end