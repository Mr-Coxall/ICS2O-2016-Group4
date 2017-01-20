--MainGameScene

-- By : Mr. Coxall
-- Created : Jan 2017
-- Created for ICS20
MainGameScene = class()

--local variable
local backButton

function MainGameScene:init()
    --
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))    
end

function MainGameScene:draw()
    background(30, 224, 245, 255)
    --sprite("Project:Game Upper BG", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    
    fill(255, 255, 255, 255)
   fontSize(60)
   font("ArialRoundedMTBold")
    pushStyle()
    text(worldChosen, WIDTH/2, HEIGHT/2)
    popStyle()
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    
    if (backButton.selected == true) then
        Scene.Change("worldSelectionScene")
    end
end
