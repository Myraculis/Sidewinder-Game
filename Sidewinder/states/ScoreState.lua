--[[
    ScoreState Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    A state meant to, once the game is either won or lost, display the result.
]]

ScoreState = Class{__includes = BaseState}

--[[
    When we enter the score state, we expect to receive the score
    from the play state so we know what to render to the State.
]]
function ScoreState:enter(score)
    self.score = score
end

function ScoreState:update(dt)
    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play', 1)
    end
end

function ScoreState:render()
    -- simply render the score to the middle of the screen
    

    love.graphics.setFont(smallFont)
    --love.graphics.printf('Word: ' .. tostring(self.word), 0, 100, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')
    

    love.graphics.printf('Press Enter to Play Again!', 0, 185, VIRTUAL_WIDTH, 'center')
end



