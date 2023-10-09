--[[
    PlaySign Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for the flickering enter symbol
]]

PlayerMed = Class{}

function PlayerMed:init(flag, level)

	self.x = 40
	self.y = VIRTUAL_HEIGHT /2 - 7

    self.timer = 0

    self.won = false

    self.flag = flag
    self.level = level

    self.moving = false
    self.direction = ''

    self.speed = 2

    if 1 == 1 then
        self.speed = 3
        if level == 0 then
            array = {{0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1},
                     {0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1},
                     {0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1},
                     {1,1,1,1,0,0,1,0,0,1,0,0,1,0,0,1},
                     {1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1}, 
                     {1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1}, 
                     {1,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1},
                     {1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0}, 
                     {1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0}}
        else if level == 1 then
            array = {{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1},
                     {1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,1},
                     {1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,1}, 
                     {1,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1}, 
                     {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
                     {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1}, 
                     {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}}
        else if level == 2 then
            array = {{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0},
                     {0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0},
                     {1,1,1,1,1,0,0,1,1,1,0,0,1,1,1,1},
                     {1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1}, 
                     {1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1}, 
                     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}}
        else if level == 3 then
            array = {{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                     {0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0},
                     {0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0},
                     {1,1,1,1,1,0,1,1,0,1,1,1,1,1,1,1},
                     {1,0,0,1,1,0,1,1,0,0,0,0,0,0,0,1}, 
                     {1,0,0,1,1,0,1,1,1,1,1,1,1,1,1,1}, 
                     {1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0},
                     {1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0},
                     {1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0}}
        else if level == 4 then
            array = {{1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1},
                     {1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1},
                     {1,0,1,0,1,0,1,0,1,1,1,1,1,1,0,1},
                     {1,0,1,0,1,1,1,0,1,0,0,0,0,1,0,1},
                     {1,0,1,0,0,0,1,0,1,0,0,0,0,1,0,1}, 
                     {1,0,1,0,1,0,1,0,1,0,0,0,0,1,1,1}, 
                     {1,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0},
                     {1,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0},
                     {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0}}
        end
    end

end

end
end
end
end











function PlayerMed:update(dt)
    self.timer = self.timer + dt

    if love.keyboard.wasPressed('right') then
        self.direction = 'r'
        self.moving = true
        --self.x = self.x + 2
    else if love.keyboard.wasPressed('left') then
        self.direction = 'l'
        self.moving = true
        --self.x = self.x - 2
    else if love.keyboard.wasPressed('up') then
        self.direction = 'u'
        self.moving = true
        --self.y = self.y - 2
    else if love.keyboard.wasPressed('down') then
        self.direction = 'd'
        self.moving = true
        --self.y = self.y + 2
    end

    if self.moving == true then
        if self.direction == 'r' then
            self.x = self.x + self.speed
            if self.x > VIRTUAL_WIDTH - 64 -14 - 16 and self.x < VIRTUAL_WIDTH - 64 + 32 and self.y < VIRTUAL_HEIGHT /2 + 16 and self.y > VIRTUAL_HEIGHT /2 - 16 - 14 then
                self.won = true
            end
            if array[math.floor(self.y / 32)+1][math.floor(self.x / 32)+1]== 1 then
                gStateMachine:change('gallery')
            end
            
        else if self.direction == 'l' then
            self.x = self.x - self.speed
            if self.x > VIRTUAL_WIDTH - 64 -14 - 16 and self.x < VIRTUAL_WIDTH - 64 + 32 and self.y < VIRTUAL_HEIGHT /2 + 16 and self.y > VIRTUAL_HEIGHT /2 - 16 - 14 then
                self.won = true
            end
            if array[math.floor(self.y / 32)+1][math.floor(self.x / 32)+1]== 1 then
                gStateMachine:change('gallery')
            end

        else if self.direction == 'u' then
            self.y = self.y - self.speed
            if self.x > VIRTUAL_WIDTH - 64 -14 - 16 and self.x < VIRTUAL_WIDTH - 64 + 32 and self.y < VIRTUAL_HEIGHT /2 + 16 and self.y > VIRTUAL_HEIGHT /2 - 16 - 14 then
                self.won = true
            end
            if array[math.floor(self.y / 32)+1][math.floor(self.x / 32)+1]== 1 then
                gStateMachine:change('gallery')
            end
        else if self.direction == 'd' then
            self.y = self.y + self.speed
            if self.x > VIRTUAL_WIDTH - 64 -14 - 16 and self.x < VIRTUAL_WIDTH - 64 + 32 and self.y < VIRTUAL_HEIGHT /2 + 16 and self.y > VIRTUAL_HEIGHT /2 - 16 - 14 then
                self.won = true
            end
            if array[math.floor(self.y / 32)+1][math.floor(self.x / 32)+1]== 1 then
                gStateMachine:change('gallery')
            end
        end
    end

    if self.won == true then
        if self.level < 4 then
            gStateMachine:change('play', self.flag, self.level + 1)
        else
            if self.flag == 0 then
                ec = true
                gStateMachine:change('gallery')
            else if self.flag == 1 then
                mc = true
                gStateMachine:change('gallery')
            else if self.flag == 2 then
                hc = true
                gStateMachine:change('gallery')
            end
            --gStateMachine:change('gallery')
        end
    end

    
end

end

end

end

end

end

end

end








end







function PlayerMed:render()

    love.graphics.setColor(0, 0, 255)
    love.graphics.rectangle('fill', self.x, self.y, 14, 14)

    love.graphics.setColor(255, 255, 255)


    
end

