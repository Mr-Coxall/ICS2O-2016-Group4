--CreditScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

-- Fixed by: Mr. Coxall
-- Fixed on: Jan 2017
-- Created for ICS20

CreditScene = class()

--local variable
local backButton

function CreditScene:init()
    -- sprite("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))    
end

function CreditScene:draw()
    -- happens every frame
    
    background(255, 158, 0, 255)
    --sprite("Project:Background Fade", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    
    fill(67, 31, 235, 255)
    fontSize(60)
    font("ArialRoundedMTBold")
    pushStyle()
    text("Credits", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function CreditScene:touched(touch)
    -- happens every frame
    
   backButton:touched(touch)
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
end