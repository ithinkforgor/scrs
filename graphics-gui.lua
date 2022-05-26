--https://github.com/shlexware/Orion/blob/main/Documentation.md
--https://robloxscripts.com/orion-ui-library-premium-bypass-script/
local httpHook;
httpHook = hookfunction(game.HttpGet, function(self,...)
   local Args = {...}
   if Args[1] and type(Args[1]) == "string" then
       if Args[1]:match("checkPremium.php") then
           return "true"
       end
   end
   return httpHook(self,...)
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ithinkforgor/hub/main/orion_source.lua')))()

--	NOTIFICATION
OrionLib:MakeNotification({
	Name = "Graphics Enchancer",
	Content = "UI_Loaded - Made by Amir",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--	WINDOW
local Window = OrionLib:MakeWindow({Name = "Graphics Enchancer", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

--	SPEC'S NEW
local Tab = Window:MakeTab({
	Name = "Spec's new",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "2016 new",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-new.lua'))()
  	end    
})
Tab:AddButton({
	Name = "2016 new - no Gui",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-new-noGui.lua'))()
  	end    
})

--	SPEC'S OLD
local Tab = Window:MakeTab({
	Name = "Spec's old",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "2016 old",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-old.lua'))()
  	end    
})
Tab:AddButton({
	Name = "2016 old - no Gui",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-old-noGui.lua'))()
  	end    
})
Tab:AddDropdown({
	Name = "krnl",
	Default = "krnl",
	Options = {"Spec's old KRNL", "2016 new krnl - no Gui"},
	Callback = function(Value)
		if Value == "Spec's old KRNL" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-old-krnl.lua'))()
        elseif Value == "2016 new krnl - no Gui" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/2016-old-noGui-krnl.lua'))()
        end
	end    
})

--	OTHER
local Tab = Window:MakeTab({
	Name = "other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "graphics",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ithinkforgor/hub/main/graphics/graphics.lua'))()
  	end    
})



