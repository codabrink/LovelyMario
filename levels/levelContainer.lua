bgm = love.audio.newSource("media/music/overworld.ogg", "stream")

level = class:new()

function level:init(lvlName)
  love.audio.stop(bgm)
  love.audio.play(bgm)
  bgm:setLooping(true)

  require "plugins/requires"
  
  ent = {
    ground = {},
    jumpWall = {},
    ball = {},
    goomba = {},
    stairs = {},
    massless = {},
    brick = {},
    moveBrick = {},
    pipe = {},
    floatGround = {},
    coins = {}
  }
    
  love.filesystem.load("levels/"..lvlName..".lua")()
end

function level:update(dt)
  if bgm:isStopped() then
    bgm = love.audio.newSource("media/music/overworld.ogg", "stream")
    love.audio.play(bgm)
  end

  for k,v in pairs(ent) do
    for i=1, #v do
      if v[i].update then
	v[i]:update(dt)
      end
    end
  end
end

function level:drawBG()

end

function level:draw()
  for k,v in pairs(ent) do
    for i=1, #v do
      if v[i].draw then
	v[i]:draw()
      end
    end
  end
end
