--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

LevelSign = Class{}

function LevelSign:init(emh)
    self.key = emh
    self.image = love.graphics.newImage('levelsign.png')
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    if emh == 0 then

        self.x = 50
        self.y = VIRTUAL_HEIGHT / 2 - (.5*self.height)
    else if emh == 1 then
        self.x = 200
        self.y = VIRTUAL_HEIGHT / 2 - (.5*self.height)
    else if emh == 2 then
        self.x = 350
        self.y = VIRTUAL_HEIGHT / 2 - (.5*self.height)
    end

    self.timer = 0

end



function LevelSign:update(dt)
    self.timer = self.timer + dt
end

function LevelSign:render()

    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(self.image, self.x, self.y)
    love.graphics.setFont(smallFont)

    if self.key == 0 then
        love.graphics.print('EASY', self.x + 33, self.y+12)
    else if self.key == 1 then
        love.graphics.print('MEDIUM', self.x + 23, self.y+12)
    else if self.key == 2 then
        love.graphics.print('HARD', self.x + 33, self.y+12)
    end

end
end
end
end
end