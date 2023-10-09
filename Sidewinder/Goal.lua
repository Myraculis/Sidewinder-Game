--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

Goal = Class{}

function Goal:init()

	self.x = VIRTUAL_WIDTH - 64 + 16
	self.y = VIRTUAL_HEIGHT /2 

    self.timer = 0


end




function Goal:update(dt)
    self.timer = self.timer + dt



    
end




function Goal:render()

    love.graphics.setColor(0, 255, 0)

    love.graphics.circle( 'fill', self.x, self.y, 16 )

    love.graphics.setColor(255, 255, 255)

    
end