-- ICS2O-2016-Group4
-- CompanyLogoScene

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #4-2016
-- This is the first scene to show up, the company logo.

CompanyLogoScene = class()

-- local variables to this scene
local startTime

-- Use this function to perform your initial setup for this scene
function CompanyLogoScene:init()
    -- set up display options
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    -- scene setup code here
    startTime = ElapsedTime
end

function CompanyLogoScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 0, 0, 255)
    sprite("Dropbox:Company Logo",WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    -- Do your drawing here
    if(startTime + 2 < ElapsedTime) then
        Scene. Change("gameLogoScene")
    end
end

function CompanyLogoScene:touched(touch)
    -- Codea does not automatically call this method
    
    -- Do your touch code here
    
end