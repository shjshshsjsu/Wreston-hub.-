local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


OrionLib:MakeNotification({

	Name = "Wreston Hub",

	Content = "Welcome To Wreston Hub! Have Fun! ",

	Image = "rbxassetid://4483345998",

	Time = 5

})

local Window = OrionLib:MakeWindow({Name = "Wreston Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "KryptedSaves"})

--Player Tab--

local PlayerTab = Window:MakeTab({

	Name = "Reach",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

local PlayerSection = PlayerTab:AddSection({

	Name = "Reach", 
	}) 



ReachSection:AddButton({

	Name = "200 Stud",	

	Callback = function(Value)
while wait(0.3) do
    local args = {
    [1] = workspace.TPSSystem.TPS,
    [2] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    [3] = 30,
    [4] = Vector3.new(4000000, 300, 4000000)
}

workspace.FE.Actions.KickG1:FireServer(unpack(args))
			end


})
		

	

 
















        






                















 

--Player Tab End--

--Settings Tab--

local SettingsTab = Window:MakeTab({

	Name = "Settings",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

local SettingsSection = SettingsTab:AddSection({

	Name = "Settings"

})
SettingsSection:AddButton({

	Name = "Rejoin Server",

	Callback = function()

        local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)

  	end    

})

SettingsSection:AddButton({

	Name = "Gui Close",

	Callback = function()

        OrionLib:Destroy()

  	end    

})
OrionLib:Init() --UI Lib 
