'})

local vbtg = 0 

local widget = require( "widget" ) 

local function exitb( event ) 

   if ( "ended" == event.phase ) then 

      os.exit() 

   end 

end 

local function vibrb( event ) 

   if ( "ended" == event.phase ) then 

      if ( vbtg == 0 ) then 

         setbg = display.newRoundedRect( 350, 600, 550, 200, 0 )

         setbg:setFillColor( 0.3, 0.3, 0.3 ) 

         vbtg = 1 

      elseif ( vbtg == 1 ) then 

         setbg:removeSelf() 

         vbtg = 0 

      end 

   end 

end 

function openb( event ) 

   if ( "ended" == event.phase ) then 

      open:removeSelf() 

      cr.isVisible = true 

      tf.isVisible = true 

      vb.isVisible = true 

      hide.isVisible = true 

   end 

end 

function hideb( event ) 

   if ( "ended" == event.phase ) then 

      tf.isVisible = false 

      vb.isVisible = false 

      hide.isVisible = false 

      open = widget.newButton(

         {

            left = 0, 

             top = -100, 

            onEvent = openb, 

            fontSize = 20

         }

      ) 

      open:setLabel("▼") 

   end 

end 

cr = widget.newButton(

   {

      left = 0, 

      top = -100, 

      fontSize = 20, 

      isEnabled = false, 

      labelColor = {default={0, 255, 0}, over={0, 0, 0, 0.5 }}

   }

) 

cr:setLabel("Создатель мода\n      slammials") 

tf = widget.newButton(

   {

      left = 0, 

      top = -54, 

      onEvent = exitb, 

      fontSize = 20

   }

) 

tf:setLabel("Выйти") 

vb = widget.newButton(

   {

      left = 0, 

      top = -8, 

      onEvent = vibrb, 

      fontSize = 20

   }

) 

vb:setLabel("Настройки") 

hide = widget.newButton(

   {

      left = 0, 

      top = 38, 

      onEvent = hideb, 

      fontSize = 20

   }

) 

hide:setLabel("▲") 

({'
