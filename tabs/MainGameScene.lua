--MainGameScene

-- By : Mr. Coxall
-- Created : Jan 2017
-- Created for ICS20
-- Edited by Austin Kane
-- Edited on January 2017
-- Edited for ICS20
-- This program is the main game
MainGameScene = class()

--local variable
local backButton
local buttonZero = 0
local buttonOne = 1
local buttonTwo = 2
local buttonThree = 3
local buttonFour = 4
local buttonFive = 5
local buttonSix = 6
local buttonSeven = 7
local buttonEight = 8
local buttonNine = 9
local buttonZeroShowing
local buttonOneShowing
local buttonTwoShowing
local buttonThreeShowing
local buttonFourShowing
local buttonFiveShowing
local buttonSixShowing
local buttonSevenShowing
local buttonEightShowing
local buttonNineShowing
local zeroIsTouched = false
local oneIsTouched = false
local twoIsTouched = false
local threeIsTouched = false
local fourIsTouched = false
local fiveIsTouched = false
local sixIsTouched = false
local sevenIsTouched = false
local eightIsTouched = false
local nineIsTouched = false
local checkButton
local gameTime = 0
local borderValue
local borderTwoValue
local borderThreeValue
local randomStartAdditionNumber = ""
local randomIncreaseNumber = ""
local randomStartSubtractionNumber = ""
local randomDecreaseNumber = ""

function MainGameScene:init()

    --create button and assign position, and make it so when they are pressed, they create an image
    border = SpriteObject("Dropbox:border", vec2(WIDTH/6.2, HEIGHT/1.8))
    borderTwo = SpriteObject("Dropbox:border", vec2(WIDTH/2, HEIGHT/1.8))
    borderThree = SpriteObject("Dropbox:border", vec2(WIDTH/1.2, HEIGHT/1.8))
    
    checkButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/1.09, HEIGHT/1.38))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))
    
    buttonZero = Button("Dropbox:number0", vec2(WIDTH/20, HEIGHT/9))
    buttonZeroShowing = SpriteObject("Dropbox:number0", vec2(WIDTH/20, HEIGHT/4))
    buttonZeroShowing.draggable = true
    buttonZeroShowing.objectImage = ""
                
    buttonOne = Button("Dropbox:number1", vec2(WIDTH/7.35, HEIGHT/9))
    buttonOneShowing = SpriteObject("Dropbox:number1", vec2(WIDTH/7.35, HEIGHT/4))
    buttonOneShowing.draggable = true
    buttonOneShowing.objectImage = ""
    
    buttonTwo = Button("Dropbox:number2", vec2(WIDTH/4.25, HEIGHT/9))
    buttonTwoShowing = SpriteObject("Dropbox:number2", vec2(WIDTH/4.25, HEIGHT/4))
    buttonTwoShowing.draggable = true
    buttonTwoShowing.objectImage = ""

    buttonThree = Button("Dropbox:number3", vec2(WIDTH/3.01, HEIGHT/9))
    buttonThreeShowing = SpriteObject("Dropbox:number3", vec2(WIDTH/3.01, HEIGHT/4))
    buttonThreeShowing.draggable = true
    buttonThreeShowing.objectImage = ""
    
    buttonFour = Button("Dropbox:number4", vec2(WIDTH/2.32, HEIGHT/9))
    buttonFourShowing = SpriteObject("Dropbox:number4", vec2(WIDTH/2.32, HEIGHT/4))
    buttonFourShowing.draggable = true
    buttonFourShowing.objectImage = ""
    
    buttonFive = Button("Dropbox:number5", vec2(WIDTH/1.89, HEIGHT/9))
    buttonFiveShowing = SpriteObject("Dropbox:number0", vec2(WIDTH/1.89, HEIGHT/4))
    buttonFiveShowing.draggable = true
    buttonFiveShowing.objectImage = ""
    
    buttonSix = Button("Dropbox:number6", vec2(WIDTH/1.59, HEIGHT/9))
    buttonSixShowing = SpriteObject("Dropbox:number6", vec2(WIDTH/1.59, HEIGHT/4))
    buttonSixShowing.draggable = true
    buttonSixShowing.objectImage = ""
    
    buttonSeven = Button("Dropbox:number7", vec2(WIDTH/1.375, HEIGHT/9))
    buttonSevenShowing = SpriteObject("Dropbox:number7", vec2(WIDTH/1.375, HEIGHT/4))
    buttonSevenShowing.draggable = true
    buttonSevenShowing.objectImage = ""
    
    buttonEight = Button("Dropbox:number8", vec2(WIDTH/1.21, HEIGHT/9))
    buttonEightShowing = SpriteObject("Dropbox:number8", vec2(WIDTH/1.21, HEIGHT/4))
    buttonEightShowing.draggable = true
    buttonEightShowing.objectImage = ""
    
    buttonNine = Button("Dropbox:number9", vec2(WIDTH/1.08, HEIGHT/9))
    buttonNineShowing = SpriteObject("Dropbox:number9", vec2(WIDTH/1.08, HEIGHT/4))
    buttonNineShowing.draggable = true
    buttonNineShowing.objectImage = ""
end

function MainGameScene:RandomNumbers()
      randomStartAdditionNumber = math.random(0,1)
      randomIncreaseNumber = math.random(1,4)
      randomStartSubtractionNumber = math.random(8,9)
      randomDecreaseNumber = math.random(1,4)
end

function MainGameScene:ResetButtons()
    buttonZeroShowing.objectCurrentLocation = buttonZeroShowing.objectStartLocation
    buttonOneShowing.objectCurrentLocation = buttonOneShowing.objectStartLocation
    buttonTwoShowing.objectCurrentLocation = buttonTwoShowing.objectStartLocation
    buttonThreeShowing.objectCurrentLocation = buttonThreeShowing.objectStartLocation
    buttonFourShowing.objectCurrentLocation = buttonFourShowing.objectStartLocation
    buttonFiveShowing.objectCurrentLocation = buttonFiveShowing.objectStartLocation
    buttonSixShowing.objectCurrentLocation = buttonSixShowing.objectStartLocation
    buttonSevenShowing.objectCurrentLocation = buttonSevenShowing.objectStartLocation
    buttonEightShowing.objectCurrentLocation = buttonEightShowing.objectStartLocation
    buttonNineShowing.objectCurrentLocation = buttonNineShowing.objectStartLocation
end
function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    buttonZeroShowing:touched(touch)
    buttonOneShowing:touched(touch)
    buttonTwoShowing:touched(touch)
    buttonThreeShowing:touched(touch)
    buttonFourShowing:touched(touch)
    buttonFiveShowing:touched(touch)
    buttonSixShowing:touched(touch)
    buttonSevenShowing:touched(touch)
    buttonEightShowing:touched(touch)
    buttonNineShowing:touched(touch)
    checkButton:touched(touch)
    
    if (backButton.selected == true) then
        Scene.Change("worldSelectionScene")
    end
    
    if (checkButton.selected == true) and (worldChosen == "add") then
        if (borderValue == randomStartAdditionNumber) and (borderTwoValue == randomStartAdditionNumber + randomIncreaseNumber) and (borderThreeValue == randomStartAdditionNumber + randomIncreaseNumber + randomIncreaseNumber) then
            text("Congratulations! You completed the pattern!", WIDTH/2, HEIGHT/4.25)
            MainGameScene:ResetButtons()
            MainGameScene:RandomNumbers()
            else
                text("Sorry! You didn't complete the pattern!", WIDTH/2, HEIGHT/4.25)
                MainGameScene:ResetButtons()
                MainGameScene:RandomNumbers()
        end
    end    
    if (checkButton.selected == true) and (worldChosen == "subtract") then
        if (borderValue == randomStartSubtractionNumber) and (borderTwoValue == randomStartSubtractionNumber - randomDecreaseNumber) and (borderThreeValue == randomStartSubtractionNumber - randomDecreaseNumber - randomDecreaseNumber) then
            text("Congratulations! You completed the pattern!", WIDTH/2, HEIGHT/4.25)
            MainGameScene:ResetButtons()
            MainGameScene:RandomNumbers()
             else
                 text("Sorry! You didn't complete the pattern!", WIDTH/2, HEIGHT/4.25)
                 MainGameScene:ResetButtons()
                 MainGameScene:RandomNumbers()
        end 
    end

    -- make the duplicate image appear, and able to be dragged
    buttonZero:touched(touch)
    if (buttonZero.selected == true) then
        buttonZeroShowing.objectImage = "Dropbox:number0"
    end
    buttonOne:touched(touch)
    if (buttonOne.selected == true) then
        buttonOneShowing.objectImage = "Dropbox:number1"
    end
    buttonTwo:touched(touch)
    if (buttonTwo.selected == true) then
        buttonTwoShowing.objectImage = "Dropbox:number2"
    end
    buttonThree:touched(touch)
    if (buttonThree.selected == true) then
        buttonThreeShowing.objectImage = "Dropbox:number3"
    end
    buttonFour:touched(touch)
    if (buttonFour.selected == true) then
        buttonFourShowing.objectImage = "Dropbox:number4"
    end
    buttonFive:touched(touch)
    if (buttonFive.selected == true) then
        buttonFiveShowing.objectImage = "Dropbox:number5"
    end
    buttonSix:touched(touch)
    if (buttonSix.selected == true) then
        buttonSixShowing.objectImage = "Dropbox:number6"
    end
    buttonSeven:touched(touch)
    if (buttonSeven.selected == true) then
        buttonSevenShowing.objectImage = "Dropbox:number7"
    end
    buttonEight:touched(touch)
    if (buttonEight.selected == true) then
        buttonEightShowing.objectImage = "Dropbox:number8"
    end
    buttonNine:touched(touch)
    if (buttonNine.selected == true) then
        buttonNineShowing.objectImage = "Dropbox:number9"
    end

    -- make the sprites stop moving when inside the border
    if (buttonZeroShowing:isTouching(border) == true)  then
        zeroIsTouched = true
        borderValue = 0
        buttonZeroShowing.objectCurrentLocation = border.objectStartLocation
    elseif (zeroIsTouched == false and touch.state == ENDED) then
        buttonZeroShowing.objectCurrentLocation =
        buttonZeroShowing.objectStartLocation
    end
    if (buttonZeroShowing:isTouching(borderTwo) == true) then
        zeroIsTouched = true
        borderTwoValue = 0
        buttonZeroShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (zeroIsTouched == false and touch.state == ENDED) then
        buttonZeroShowing.objectCurrentLocation =
        buttonZeroShowing.objectStartLocation
    end
    if (buttonZeroShowing:isTouching(borderThree) == true) then
        zeroIsTouched = true
        borderThreeValue = 0
        buttonZeroShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (zeroIsTouched == false and touch.state == ENDED) then
        buttonZeroShowing.objectCurrentLocation =
        buttonZeroShowing.objectStartLocation
    end
    
    if (buttonOneShowing:isTouching(border) == true)  then
        oneIsTouched = true
        borderValue = 1
        buttonOneShowing.objectCurrentLocation = border.objectStartLocation
    elseif (oneIsTouched == false and touch.state == ENDED) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
    end
    if (buttonOneShowing:isTouching(borderTwo) == true) then
        oneIsTouched = true
        borderTwoValue = 1
        buttonOneShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (oneIsTouched == false and touch.state == ENDED) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
    end
    if (buttonOneShowing:isTouching(borderThree) == true) then
        oneIsTouched = true
        borderThreeValue = 1
        buttonOneShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (oneIsTouched == false and touch.state == ENDED) then
        buttonOneShowing.objectCurrentLocation =
        buttonOneShowing.objectStartLocation
    end
    
    if (buttonTwoShowing:isTouching(border) == true)  then
        twoIsTouched = true
        borderValue = 2
        buttonTwoShowing.objectCurrentLocation = border.objectStartLocation
    elseif (twoIsTouched == false and touch.state == ENDED) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
    end
    if (buttonTwoShowing:isTouching(borderTwo) == true) then
        twoIsTouched = true
        borderTwoValue = 2
        buttonTwoShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (twoIsTouched == false and touch.state == ENDED) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
    end
    if (buttonTwoShowing:isTouching(borderThree) == true) then
        twoIsTouched = true
        borderThreeValue = 2
        buttonTwoShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (twoIsTouched == false and touch.state == ENDED) then
        buttonTwoShowing.objectCurrentLocation =
        buttonTwoShowing.objectStartLocation
    end
    
    if (buttonThreeShowing:isTouching(border) == true)  then
        threeIsTouched = true
        borderValue = 3
        buttonThreeShowing.objectCurrentLocation = border.objectStartLocation
    elseif (threeIsTouched == false and touch.state == ENDED) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
    end
    if (buttonThreeShowing:isTouching(borderTwo) == true) then
        threeIsTouched = true
        borderTwoValue = 3
        buttonThreeShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (threeIsTouched == false and touch.state == ENDED) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
    end
    if (buttonThreeShowing:isTouching(borderThree) == true) then
        threeIsTouched = true
        borderThreeValue = 3
        buttonThreeShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (threeIsTouched == false and touch.state == ENDED) then
        buttonThreeShowing.objectCurrentLocation =
        buttonThreeShowing.objectStartLocation
    end
    
    if (buttonFourShowing:isTouching(border) == true)  then
        fourIsTouched = true
        borderValue = 4
        buttonFourShowing.objectCurrentLocation = border.objectStartLocation
    elseif (fourIsTouched == false and touch.state == ENDED) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
    end
    if (buttonFourShowing:isTouching(borderTwo) == true) then
        fourIsTouched = true
         borderTwoValue = 4
        buttonFourShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (fourIsTouched == false and touch.state == ENDED) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
    end
    if (buttonFourShowing:isTouching(borderThree) == true) then
        fourIsTouched = true
        borderThreeValue = 4
        buttonFourShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (fourIsTouched == false and touch.state == ENDED) then
        buttonFourShowing.objectCurrentLocation =
        buttonFourShowing.objectStartLocation
    end
    
    if (buttonFiveShowing:isTouching(border) == true)  then
        fiveIsTouched = true
        borderValue = 5
        buttonFiveShowing.objectCurrentLocation = border.objectStartLocation
    elseif (fiveIsTouched == false and touch.state == ENDED) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
    end
    if (buttonFiveShowing:isTouching(borderTwo) == true) then
        fiveIsTouched = true
        borderTwoValue = 5
        buttonFiveShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (fiveIsTouched == false and touch.state == ENDED) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
    end
    if (buttonFiveShowing:isTouching(borderThree) == true) then
        fiveIsTouched = true
        borderThreeValue = 5
        buttonFiveShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (fiveIsTouched == false and touch.state == ENDED) then
        buttonFiveShowing.objectCurrentLocation =
        buttonFiveShowing.objectStartLocation
    end
    
    if (buttonSixShowing:isTouching(border) == true)  then
        sixIsTouched = true
        borderValue = 6
        buttonSixShowing.objectCurrentLocation = border.objectStartLocation
    elseif (sixIsTouched == false and touch.state == ENDED) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
    end
    if (buttonSixShowing:isTouching(borderTwo) == true) then
        sixIsTouched = true
        borderTwoValue = 6
        buttonSixShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (sixIsTouched == false and touch.state == ENDED) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
    end
    if (buttonSixShowing:isTouching(borderThree) == true) then
        sixIsTouched = true
        borderThreeValue = 6
        buttonSixShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (sixIsTouched == false and touch.state == ENDED) then
        buttonSixShowing.objectCurrentLocation =
        buttonSixShowing.objectStartLocation
    end
    
    if (buttonSevenShowing:isTouching(border) == true)  then
        sevenIsTouched = true
        borderValue = 7
        buttonSevenShowing.objectCurrentLocation = border.objectStartLocation
    elseif (sevenIsTouched == false and touch.state == ENDED) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
    end
    if (buttonSevenShowing:isTouching(borderTwo) == true) then
        sevenIsTouched = true
        borderTwoValue = 7
        buttonSevenShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (sevenIsTouched == false and touch.state == ENDED) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
    end
    if (buttonSevenShowing:isTouching(borderThree) == true) then
        sevenIsTouched = true
        borderThreeValue = 7
        buttonSevenShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (sevenIsTouched == false and touch.state == ENDED) then
        buttonSevenShowing.objectCurrentLocation =
        buttonSevenShowing.objectStartLocation
    end
    
    if (buttonEightShowing:isTouching(border) == true)  then
        eightIsTouched = true
        borderValue = 8
        buttonEightShowing.objectCurrentLocation = border.objectStartLocation
    elseif (eigtIsTouched == false and touch.state == ENDED) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
    end
    if (buttonEightShowing:isTouching(borderTwo) == true) then
        eightIsTouched = true
        borderTwoValue = 8
        buttonEightShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (eightIsTouched == false and touch.state == ENDED) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
    end
    if (buttonEightShowing:isTouching(borderThree) == true) then
        eightIsTouched = true
        borderThreeValue = 8
        buttonEightShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (eightIsTouched == false and touch.state == ENDED) then
        buttonEightShowing.objectCurrentLocation =
        buttonEightShowing.objectStartLocation
    end
    
    if (buttonNineShowing:isTouching(border) == true)  then
        nineIsTouched = true
        borderValue = 9
        buttonNineShowing.objectCurrentLocation = border.objectStartLocation
    elseif (nineIsTouched == false and touch.state == ENDED) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
    end
    if (buttonNineShowing:isTouching(borderTwo) == true) then
        nineIsTouched = true
        borderTwoValue = 9
        buttonNineShowing.objectCurrentLocation = borderTwo.objectStartLocation
    elseif (nineIsTouched == false and touch.state == ENDED) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
    end
    if (buttonNineShowing:isTouching(borderThree) == true) then
        nineIsTouched = true
        borderThreeValue = 9
        buttonNineShowing.objectCurrentLocation = borderThree.objectStartLocation
    elseif (nineIsTouched == false and touch.state == ENDED) then
        buttonNineShowing.objectCurrentLocation =
        buttonNineShowing.objectStartLocation
    end
end


function MainGameScene:draw()
    background(255, 255, 255, 255)
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Baskerville-BoldItalic")
    pushStyle()    
    text("Tap the numbers for them to appear.", WIDTH/2, HEIGHT/2.75)
    text("Tap the green button to start.", WIDTH/2, HEIGHT/1.25)
    popStyle()

    --sprite("Project:Game Upper BG", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    backButton:draw()
    
    if (worldChosen == "add") then
        text("Start at "..randomStartAdditionNumber.." and add "..randomIncreaseNumber.." each time.", WIDTH/2, HEIGHT/1.05)  
    elseif (worldChosen == "subtract") then
        text("Start at "..randomStartSubtractionNumber.." and subtract "..randomDecreaseNumber.." each time.", WIDTH/2, HEIGHT/1.05)
    end
    
    border:draw()
    borderTwo:draw()
    borderThree:draw()
    buttonZero:draw()
    buttonOne:draw()
    buttonTwo:draw()
    buttonThree:draw()
    buttonFour:draw()
    buttonFive:draw()
    buttonSix:draw()
    buttonSeven:draw()
    buttonEight:draw()
    buttonNine:draw()
    buttonZeroShowing:draw()
    buttonOneShowing:draw()
    buttonTwoShowing:draw()
    buttonThreeShowing:draw()
    buttonFourShowing:draw()
    buttonFiveShowing:draw()
    buttonSixShowing:draw()
    buttonSevenShowing:draw()
    buttonEightShowing:draw()
    buttonNineShowing:draw()
    checkButton:draw()

end