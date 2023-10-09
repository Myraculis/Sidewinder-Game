--[[
    ScoreState Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    A state meant to, once the game is either won or lost, display the result.
]]

GalleryState = Class{__includes = BaseState}

--[[
    When we enter the score state, we expect to receive the score
    from the play state so we know what to render to the State.
]]
function GalleryState:enter()
    self.levelsigne = LevelSign(0)
    self.levelsignm = LevelSign(1)
    self.levelsignh = LevelSign(2)
    self.cursor = Cursor()
    self.key = 0
end

function GalleryState:update(dt)

    self.cursor:update(dt)

    if love.keyboard.wasPressed('right') then
        if self.key < 2 then
            self.key = self.key + 1
        end
    else if love.keyboard.wasPressed('left') then
        if self.key > 0 then
            self.key = self.key - 1
        end
    end

    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play', self.key, 0)
    end
end

end

function GalleryState:render()
    -- simply render the score to the middle of the screen

    self.check = love.graphics.newImage('check.png')
    
    if ec == true then 
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(self.check, 100, 50)
    end

    if mc == true then 
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(self.check, 250, 50)
    end

    if hc == true then 
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(self.check, 400, 50)
    end

    love.graphics.setFont(smallFont)

    self.levelsigne:render()
    self.levelsignm:render()
    self.levelsignh:render()
    self.cursor:render()
end