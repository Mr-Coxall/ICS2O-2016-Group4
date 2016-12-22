--SubtractionScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20
SubtractionScene = class()

--local variable
local backButton

function SubtractionScene:init()
    -- you can accept and set parameters here
    -- sprite("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/9.4, HEIGHT/1.1))    
end

function SubtractionScene:draw()
    background(30, 224, 245, 255)
    sprite("Project:Game Upper BG", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    fill(99, 184, 20, 255)
   fontSize(60)
   font("ArialRoundedMTBold")  
    pushStyle()    
   text("Subtraction", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function SubtractionScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    
    if (backButton.selected == true) then
        Scene.Change("startButton")
    end
end
