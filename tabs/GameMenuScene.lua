
--GameMenuScene

-- By : Jaewon seo
-- Created : December 2016

-- Fixed by: Mr. Coxall
-- Fixed on: Jan 2017
-- Created for ICS20

GameMenuScene = class()

-- local variable
local startButton
local storeButton
local gameCentreScene
local settingScene
local creditScene

function GameMenuScene:init()

    --sprite("Dropbox:Blue Info Button")
    startButton = Button("Dropbox:playButton", vec2(WIDTH/2, HEIGHT/2), 0.25)
    --storeButton = Button("Project:Door Tall Open", vec2(WIDTH/9.4, HEIGHT/1.1))
    --gameCentreScene = Button("Project:Condition Any", vec2(WIDTH/1.1, HEIGHT/1.1))
    settingScene = Button("Dropbox:settingsButton", vec2(WIDTH-150, 150), 0.25)
    creditScene = Button("Dropbox:creditsButton", vec2(150, 150), 0.25)
end

function GameMenuScene:draw()
    -- Codea does not automatically call this
    sprite("Dropbox:Opening Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
        
    startButton:draw()
    --storeButton:draw()
    --gameCentreScene:draw()
    settingScene:draw()
    creditScene:draw()
    
    fill(82, 235, 31, 255)
    fontSize(60)
    font("AmericanTypewriter-CondensedBold")
    pushStyle()
    text("Pattern Party", WIDTH/2, HEIGHT/1.1)
    popStyle()
end

function GameMenuScene:touched(touch)
    -- Codea does not automatically call this method
    startButton:touched(touch)
    --storeButton:touched(touch)
    --GameCentreScene:touched(touch)
    settingScene:touched(touch)
    creditScene:touched(touch)
    
    if (startButton.selected == true)then
        Scene.Change("worldSelectionScene")
    end
    
   -- if (storeButton.selected == true) then
       -- Scene.Change("storeButton")
   -- end
    
    --if (GameCentreScene.selected ==true) then
        -- always check to ensure Game Center is logged in
        -- before doing a command, or the player will
        -- get anoying warnings!
        --if (gamecenter.enabled() == true) then
            --gamecenter.showLeaderboards()
       -- end 
   -- end    
    if (settingScene.selected ==true) then
        Scene.Change("settingScene")
    end
    if (creditScene.selected ==true) then
        Scene.Change("creditButton")
    end
end