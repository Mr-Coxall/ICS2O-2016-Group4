-- ICS2O-2016-Group4
-- GameLogoScene

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #4-2016
-- This is the second scene to show up, the game logo.

GameLogoScene = class()

-- local variables to this scene


-- Use this function to perform your initial setup for this scene
function GameLogoScene:init()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    -- scene setup code here
    
end

function GameLogoScene:draw()
    -- Codea does not automatically call this method
    
    background(81, 0, 255, 255)
    
    -- Do your drawing here
    sprite("Project:GameBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
end

function GameLogoScene:touched(touch)
    -- Codea does not automatically call this method
    
    -- Do your touch code here
    
end
