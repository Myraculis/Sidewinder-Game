--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

PlaySign = Class{}

function PlaySign:init()
    self.image = love.graphics.newImage('enter.png')
    self.x = 156
    self.y = 50

    self.light = 0

    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.timer = 0

end



function PlaySign:update(dt)
    self.timer = self.timer + dt*5
    self.light = 255 * math.abs(math.sin(0.5 * self.timer))
end

function PlaySign:render()

    love.graphics.setColor(255, 255, 255, self.light)
    love.graphics.draw(self.image, self.x, self.y)

    love.graphics.setColor(255, 255, 255)

    
end