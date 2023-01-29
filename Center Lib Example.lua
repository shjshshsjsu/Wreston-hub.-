local SimpleShindoUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/SimpleShindoUi"))()

local Main = SimpleShindoUi:new()

local Tab = Main:Tap('Wreston Hub')

 page = Tab:page()

local Labelz = page:Label('Fly Gui!')


page:Button('Fly!',function()

    print('t')

end)
page2 = Tab:page2()

local Labelz = page2:Label('Gui Settings!')

page:Button('Close Gui!',function()



	
    
    


	
        CenterLib:Destroy()

  	



end)



