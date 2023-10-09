--[[
    TitleScreenState Class
    
    Author: Evan Frankel
    esfbbmc@gmail.com
    The TitleScreenState is the starting screen of the game, shown on startup. It should
    display the flickering enter suggestion
]]

TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:init()
    self.playsign = PlaySign()
end

function TitleScreenState:update(dt)


    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('gallery', 1)
    end

    self.playsign:update(dt)
    self.playsign:render()
end

function TitleScreenState:render()
    love.graphics.setFont(bigFont)
    love.graphics.printf('Slidewinder', 0, 64, VIRTUAL_WIDTH, 'center')

    self.playsign:render()
end