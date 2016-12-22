--WorldSelectionScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

WorldSelectionScene = class()

--local variable
local backButton
local additionButton
local subtractionButton
local shapesButton

function WorldSelectionScene:init()
    -- you can accept and set parameters here
    --sprite("Project:additonButton", vec2(WIDTH/2, HEIGHT/2))
    --sprite("Project:subtractionButton", vec(WIDTH/2, HEIGHT/2))
    --sprite("Project:shapesButton", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/9.4, HEIGHT/1.1))    
    additionButton = Button("Project:additonButton", vec2(WIDTH/9, HEIGHT/1.5), 0.5)
    subtractionButton = Button("Project:subtractionButton", vec2(WIDTH/3, HEIGHT/5))
    shapesButton = Button("Project:shapesButton", vec2(WIDTH/1.5, HEIGHT/1.5))
end

function WorldSelectionScene:draw()
    background(58, 79, 194, 255)
    sprite("Project:Game Area", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    additionButton:draw()
    subtractionButton:draw()
    shapesButton:draw()
    fill(95, 255, 0, 255)
   fontSize(60)
   font("ArialRoundedMTBold")
    pushStyle()
   text("Worlds", WIDTH/2, HEIGHT/1.1)
    popStyle()
   fontSize(40)
   text("Addition", WIDTH/9, HEIGHT/2)
    popStyle()
   fontSize(40)
   text("Subtraction", WIDTH/3, HEIGHT/2)
    popStyle()
   fontSize(40)
   text("Shapes", WIDTH/1.5, HEIGHT/2.1)
    popStyle()
end

function WorldSelectionScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    additionButton:touched(touch)
    subtractionButton:touched(touch)
    shapesButton:touched(touch)
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
    if (additionButton.selected == true) then
        Scene.Change("additionScene")
    end
    if (subtractionButton.selected == true)then
        Scene.Change("SubtractionScene")
    end
    if (shapesButton.selected == true)then
        Scene.Change("shapesScene")
    end
end
