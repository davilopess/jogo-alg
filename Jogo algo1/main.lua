local anim = require 'anim8'

local Imagem, animation 

local posX = 100
local direcao = true 

function love.load ()
  Imagem = love.graphics.newImage( "Imagens/Policia.png" ) 
  local g = anim.newGrid( 93, 165, Imagem:getWidth() , Imagem:getHeight () )
  animation = anim.newAnimation( g( '1-6', 1), 0.01)
 end 
function love.update ()
    if love.keyboard.isDown( 'left' ) then 
      posX = posX - 150 * dt
      direcao = false
      animation:update( dt )
  end
end
  function love.update ()
    if love.keyboard.isDown( 'right' ) then 
      posX = posX + 150 * dt
      direcao = true
      animation:update( dt )
  end
end 
function love.draw ()
   love.graphics.setBackgroundColor(255,255,255)
  if direcao then
      animation:draw( Imagem, posX, 50, 0, 1, 1, 46, 0)
  elseif not direcao then
      animation:draw( Imagem, posX, 50, 0, -1, 1, 46, 0)
    end
  end