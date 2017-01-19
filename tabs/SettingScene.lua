--SettingScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

-- Fixed by: Mr. Coxall
-- Fixed on: Jan 2017
-- Created for ICS20

SettingScene = class()

-- local variable
local backButton

function SettingScene:init()
    -- you can accept and set parameters here
    -- sprite("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))    
end

function SettingScene:draw()
    background(80, 242, 38, 255)
    --sprite("Project:Background Fade", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    
    fill(67, 31, 235, 255)
    fontSize(60)
    font("ArialRoundedMTBold")
    pushStyle()
    text("Settings", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function SettingScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    if (backButton.selected == true) then
        Scene.Change("gameMenuScene")
    end
end
