-- StoreScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

StoreScene = class()

--local variable
local backButton

function StoreScene:init()
        -- you can accept and set parameters here
    -- sprite("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/9.4, HEIGHT/1.1))    
end

function StoreScene:draw()
    background(3, 215, 245, 255)
    sprite("Project:Background Fade", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    fill(169, 234, 31, 255)
   fontSize(60)
   font("ArialRoundedMTBold")
    pushStyle()
   text("Store", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function StoreScene:touched(touch)
   backButton:touched(touch)
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
end
