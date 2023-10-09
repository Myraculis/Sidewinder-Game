--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

Level = Class{}

function Level:init(flag, level)


    self.timer = 0

	

end



function Level:update(dt)
    self.timer = self.timer + dt

    
end





function Level:render()

    love.graphics.setColor(255, 255, 255, self.light)

    for i = 1, 9 do

        for o = 1, 16 do
            if array[i][o] == 1 then
                love.graphics.rectangle('fill', (o-1)*32, (i-1)*32, 32, 32)
            end
        end
    end

    love.graphics.setColor(255, 255, 255)

    
end