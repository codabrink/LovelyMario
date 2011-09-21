--ground
ent.ground[#ent.ground + 1] = ground:new(-32, 576, 672, 64) --1
ent.ground[#ent.ground + 1] = ground:new(704, 608, 352, 32) --2
ent.ground[#ent.ground + 1] = ground:new(1152, 608, 256, 32) --3
ent.ground[#ent.ground + 1] = ground:new(1408, 384, 640, 256) --4
ent.ground[#ent.ground + 1] = ground:new(2148, 608, 1280, 32) --5

--floating ground
ent.floatGround[#ent.floatGround + 1] = floatGround:new(2148, 384, 640, 160)

ent.coins[#ent.coins + 1] = coinGroup:new(2788, 416, 8, 3)
ent.coins[#ent.coins + 1] = coinGroup:new(2148, 0, 30, 12)

--pipe
ent.pipe[#ent.pipe + 1] = pipe:new(640, 480, 5)

--brick
for i=1, 6 do
  ent.brick[#ent.brick + 1] = brick:new(i * 32 + 275, 480)
end
ent.brick[#ent.brick + 1] = brick:new(1500, 256)
ent.brick[#ent.brick + 1] = brick:new(1600, 256)
ent.brick[#ent.brick + 1] = brick:new(1700, 256)

--moveBrick
ent.moveBrick[#ent.moveBrick + 1] = moveBrick:new(3388, 500)

--jumpwall
ent.jumpWall[#ent.jumpWall + 1] = jumpWall:new(2788, 384, 8, 1)
ent.jumpWall[#ent.jumpWall + 1] = jumpWall:new(3044, 384, 4, 5)
ent.jumpWall[#ent.jumpWall + 1] = jumpWall:new(2820, 512, 7, 1)

--goomba
ent.goomba[#ent.goomba + 1] = goomba:new(800, 590)
ent.goomba[#ent.goomba + 1] = goomba:new(900, 590)
ent.goomba[#ent.goomba + 1] = goomba:new(1500, 0)
ent.goomba[#ent.goomba + 1] = goomba:new(1600, 0)
ent.goomba[#ent.goomba + 1] = goomba:new(1700, 0)

--stairs
ent.stairs[#ent.stairs + 1] = stairs:new(1184, 384, 7, 0, left)