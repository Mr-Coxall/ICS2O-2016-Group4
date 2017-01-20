--WorldSelectionScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

-- Fixed by: Mr. Coxall
-- Fixed on: Jan 2017
-- Created for ICS20

WorldSelectionScene = class()

--local variable
local backButton
local additionButton
local subtractionButton
--local shapesButton

function WorldSelectionScene:init()
    -- happens every frame
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))    
    additionButton = Button("Dropbox:addButton", vec2(WIDTH*(1/3), HEIGHT/2), 0.2)
    subtractionButton = Button("Dropbox:subtractButton", vec2(WIDTH*(2/3), HEIGHT/2), 0.2)
    --shapesButton = Button("Project:shapesButton", vec2(WIDTH/1.5, HEIGHT/1.5))
end

function WorldSelectionScene:draw()
    background(58, 79, 194, 255)
    --sprite("Project:Game Area", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    additionButton:draw()
    subtractionButton:draw()
    --shapesButton:draw()
    
    fill(95, 255, 0, 255)
    fontSize(60)
    font("ArialRoundedMTBold")
    pushStyle()
    text("Worlds", WIDTH/2, HEIGHT-100)
    
   fontSize(40)
   text("Addition", WIDTH*(1/3), HEIGHT/2+150)
    
   fontSize(40)
   text("Subtraction", WIDTH*(2/3), HEIGHT/2+150)
    
  -- fontSize(40)
  -- text("Shapes", WIDTH/1.5, HEIGHT/2.1)
    
    popStyle()
end

function WorldSelectionScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    additionButton:touched(touch)
    subtractionButton:touched(touch)
    --shapesButton:touched(touch)
    
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
    if (additionButton.selected == true) then
        worldChosen = "add"
        Scene.Change("mainGameScene")
    end
    if (subtractionButton.selected == true) then
        worldChosen = "subtract"
        Scene.Change("mainGameScene")
    end
    --if (shapesButton.selected == true)then
        --Scene.Change("shapesScene")
    --end
end