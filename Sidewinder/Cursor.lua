--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

Cursor = Class{}

function Cursor:init()
    self.x = 48
    self.y = 119

    self.light = 0


    self.timer = 0

    self.key = 0

end



function Cursor:update(dt)
    self.timer = self.timer + dt*5
    self.light = 255 * math.abs(math.sin(0.5 * self.timer))

    if love.keyboard.wasPressed('right') then
        if self.key < 2 then
            self.x = self.x + 150
            self.key = self.key + 1
        end
    else if love.keyboard.wasPressed('left') then
        if self.key > 0 then
            self.x = self.x - 150
            self.key = self.key - 1
        end
    end
end

end

function Cursor:render()

    love.graphics.setColor(255, 255, 255, self.light)
    love.graphics.rectangle('line', self.x, self.y, 110, 50)

    love.graphics.setColor(255, 255, 255)

    
end
