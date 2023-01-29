local SimpleShindoUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/SimpleShindoUi"))()

local Main = SimpleShindoUi:new()

local Tab = Main:Tap('Wreston Hub')

local page = Tab:page()

local Labelz = page:Label('Fly Gui!')


page:Button('Fly!',function()

    print('t')

end)




