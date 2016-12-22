--CreditScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

CreditScene = class()

--local variable
local backButton

function CreditScene:init()
        -- you can accept and set parameters here
    -- sprite("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/9.4, HEIGHT/1.1))    
end

function CreditScene:draw()
    background(255, 158, 0, 255)
    sprite("Project:Background Fade", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    fill(67, 31, 235, 255)
   fontSize(60)
   font("ArialRoundedMTBold")
    pushStyle()
   text("Credits", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function CreditScene:touched(touch)
   backButton:touched(touch)
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
end
