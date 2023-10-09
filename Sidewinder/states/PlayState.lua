--[[
    PlayState Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    The state that controls the click screen and unlocking the items
]]

PlayState = Class{__includes = BaseState}


function PlayState:enter(flag, count)


    self.timer = 0
    self.level = Level(flag, count)
    self.goal = Goal()
    if flag == 0 then
        self.player = Player(flag, count)
    else if flag == 1 then
        self.player = PlayerMed(flag, count)
    else if flag == 2 then
        self.player = PlayerHard(flag, count)
    end

end

end

end

function PlayState:update(dt)
    self.timer = self.timer + dt 
    self.player:update(dt)
    self.goal:update(dt)

end


function PlayState:render()
    
    self.level:render()
    self.player:render()
    self.goal:render()
    


end

--[[
    Called when this state is transitioned to from another state.
]]

--[[
    Called when this state changes to another state.
]]
function PlayState:exit()
end





