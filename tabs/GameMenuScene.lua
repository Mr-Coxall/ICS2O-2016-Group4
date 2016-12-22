
--GameMenuScene

-- By : Jaewon seo
-- Created : December 2016
-- Created for ICS20

GameMenuScene = class()

-- local variable
local startButton
local storeButton
local GameCentreScene
local SettingScene
local creditScene

function GameMenuScene:init()
    -- you can accept and set parameters here
    --sprite("Project:Play Button")
    --sprite("Project:Door Tall Open")
    --sprite("Project:Condition Any")
    --sprite("Project:Blue Settings Button",WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
  -- sprite("Project:Guy Standing")
    
    startButton = Button("Project:Play Button", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Project:Door Tall Open", vec2(WIDTH/9.4, HEIGHT/1.1))
    GameCentreScene = Button("Project:Condition Any", vec2(WIDTH/1.1, HEIGHT/1.1))
    SettingScene = Button("Project:Blue Settings Button", vec2(WIDTH/1.1, HEIGHT/9))
    creditScene = Button("Project:Guy Standing", vec2(WIDTH/9.4, HEIGHT/9))
end

function GameMenuScene:draw()
    -- Codea does not automatically call this
    sprite("Cargo Bot:Opening Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
        
   startButton:draw()
   storeButton:draw()
   GameCentreScene:draw()
   SettingScene:draw()
   creditScene:draw()
    
   fill(82, 235, 31, 255)
   fontSize(60)
   font("AmericanTypewriter-CondensedBold")
    pushStyle()
   text("Pattern 1 fun", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function GameMenuScene:touched(touch)
    -- Codea does not automatically call this method
    startButton:touched(touch)
    storeButton:touched(touch)
    GameCentreScene:touched(touch)
    SettingScene:touched(touch)
    creditScene:touched(touch)
    
    if (startButton.selected == true)then
        Scene.Change("startButton")
    end
    
    if (storeButton.selected == true) then
        Scene.Change("storeButton")
    end
    
    if (GameCentreScene.selected ==true) then
        -- always check to ensure Game Center is logged in
        -- before doing a command, or the player will
        -- get anoying warnings!
        if (gamecenter.enabled() == true) then
            gamecenter.showLeaderboards()
        end 
    end    
    if (SettingScene.selected ==true)then
        Scene.Change("settingScene")
    end
    if (creditScene.selected ==true)then
        Scene.Change("creditButton")
    end
end