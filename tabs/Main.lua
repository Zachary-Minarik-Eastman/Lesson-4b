    -- Lesson 4a

--Created by: Zachary Minarik-Eastman
--Created on: Oct, 2016
--Created for: ICS02
--This Program moves a Sprite around the screen by using the iPads accelerometer

--Global Variables
local beetle
local object2

-- Use this function to preform the initial setup
function setup()
    --Setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    --create beetle
    local imageName = "SpaceCute:Beetle Ship"
    beetle = SpriteObject(imageName, vec2(WIDTH/2, HEIGHT/2))
    
    local object2Name = "Planet Cute:Enemy Bug"
    object2 = SpriteObject(object2Name, vec2(WIDTH, HEIGHT))
  
  end

-- This function gets called once every frame
function touched(touch)
    --local variables
    
    
    --do your coding here
    beetle:touched(touch)
    object2:touched(touch)
end

--This function gets called on once evey frame
function draw()
    --local variables
    
    --do your drawing here
    background(0, 0, 0, 255)
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    object2:draw()   
    beetle:draw()
end
    