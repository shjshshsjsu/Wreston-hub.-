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

	Name = "Player",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

local PlayerSection = PlayerTab:AddSection({

	Name = "Player", 
	}) 
	



	

 PlayerSection:AddButton({

	Name = "Fly",

	Callback = function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
      		

  	end

 })


PlayerSection:AddLabel("Fly Gui Owner YT:me ozoneYT")

PlayerSection:AddButton({
Name = "Esp" ,

Callback = function() 

local color = BrickColor.new(50,0,250)

local transparency = .4

local Players = game:GetService("Players")

local function _ESP(c)

  repeat wait() until c.PrimaryPart ~= nil

  for i,p in pairs(c:GetChildren()) do

    if p.ClassName == "Part" or p.ClassName == "MeshPart" then

      if p:FindFirstChild("shit") then p.shit:Destroy() end

      local a = Instance.new("BoxHandleAdornment",p)

      a.Name = "shit"

      a.Size = p.Size

      a.Color = color

      a.Transparency = transparency

      a.AlwaysOnTop = true    

      a.Visible = true    

      a.Adornee = p

      a.ZIndex = true    

    end

  end

end

local function ESP()

  for i,v in pairs(Players:GetChildren()) do

    if v ~= game.Players.LocalPlayer then

      if v.Character then

        _ESP(v.Character)

      end

      v.CharacterAdded:Connect(function(chr)

        _ESP(chr)

      end)

    end

  end

  Players.PlayerAdded:Connect(function(player)

    player.CharacterAdded:Connect(function(chr)

      _ESP(chr)

    end)  

  end)

end

ESP()
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

	Name = "Gui Close",

	Callback = function()

        OrionLib:Destroy()

  	end    

})

--Settings End--
--Kat Start--
local Section = Tab:AddSection({

	Name = "Kat"})
	
	KatSection:AddButton({ 
	Name = "Aim Bot",
	
	Callback = function()
	local Camera = game:GetService("Workspace").CurrentCamera

local Players = game:GetService("Players")

local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()

   local ClosestPlayer = nil

   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do

       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then

           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then

               FarthestDistance = DistanceFromPlayer

               ClosestPlayer = v

           end

       end

   end

   if ClosestPlayer then

       return ClosestPlayer

   end

end

local GameMetaTable = getrawmetatable(game)

local OldGameMetaTableNamecall = GameMetaTable.__namecall

setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)

   local NamecallMethod = getnamecallmethod()

   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then

       local ClosestPlayer = GetClosestPlayer()

       

       if ClosestPlayer and ClosestPlayer.Character then

           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)

       end

   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))

end)

setreadonly(GameMetaTable, true) 
end
}) 
	
	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	
	
	
	
	
	
--Kat End--
OrionLib:Init() --UI Lib 
