------------------------------------------------------------------------------------
--Thanks for using NixonGUI :D -----------------------------------------------------
--- by @NixonDoesLua, @x00jkidd, @robloxalt12390, G00DXEN0, bamababe2005/skrub -----
--- @NixonDoesLua, G00DXEN0 are owned by bamababe2005/skrub as alt accs ------------
--- thanks for using! --------------------------------------------------------------
------------------------------------------------------------------------------------

-- if theres any suggestins feel free to let me know on scriptblox page of the script! or if theres any bugs let me know by commenting on the scriptblox page and telling me the bug!

--note this has not yet been published to scriptblox so i well eatrher upload it on my youtube or github--

--untill then to message me just comment on my youtube or something xd

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local infobox = Instance.new("Script")
infobox.Parent = game.StarterGui
infobox.Name = "INFO TEXT"

function Info(t) 
	local info = Instance.new("Hint")
	info.Text = t
	info.Parent = game.Players.LocalPlayer.PlayerGui
	wait(5)
	info:Destroy()
end


local ng = Instance.new("ScreenGui")
ng.Parent = game.Players.LocalPlayer.PlayerGui
ng.Name= "NixonGUI"
ng.ResetOnSpawn = false


local mainframe = Instance.new("Frame")
mainframe.Parent = ng
mainframe.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
mainframe.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
mainframe.BorderSizePixel = 4
mainframe.Position = UDim2.new(0.104, 0,0.192, 0)
mainframe.Size = UDim2.new(0, 751,0, 381)
mainframe.Visible = true

local drag = Instance.new("UIDragDetector")
drag.Parent = mainframe

local topbar = Instance.new("Frame")
topbar.Parent = mainframe
topbar.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
topbar.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
topbar.BorderSizePixel = 4
topbar.Position = UDim2.new(0, 0,-0.121, 0)
topbar.Size = UDim2.new(0, 751,0, 42)

local title = Instance.new("TextLabel")
title.Parent = topbar
title.Text = "NixonGUI V2.1"
title.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
title.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
title.BorderSizePixel = 4
title.Position = UDim2.new(0, 0,0, 0)
title.Size = UDim2.new(0, 200,0, 42)
title.TextScaled = true
title.TextColor3 = Color3.new(1, 1, 1)

local home = Instance.new("Frame")
home.Parent = mainframe
home.BackgroundTransparency = 1
home.Position = UDim2.new(0, 0,0, 0)
home.Size = UDim2.new(0, 751,0, 381)
home.Visible = true

local gamepage = Instance.new("Frame")
gamepage.Parent = mainframe
gamepage.BackgroundTransparency = 1
gamepage.Position = UDim2.new(0, 0,0, 0)
gamepage.Size = UDim2.new(0, 751,0, 381)
gamepage.Visible = false

local playerpage = Instance.new("Frame")
playerpage.Parent = mainframe
playerpage.BackgroundTransparency = 1
playerpage.Position = UDim2.new(0, 0,0, 0)
playerpage.Size = UDim2.new(0, 751,0, 381)
playerpage.Visible = false

local settingspage = Instance.new("Frame")
settingspage.Parent = mainframe
settingspage.BackgroundTransparency = 1
settingspage.Position = UDim2.new(0, 0,0, 0)
settingspage.Size = UDim2.new(0, 751,0, 381)
settingspage.Visible = false

local LC = Instance.new("Frame")
LC.Parent = mainframe
LC.BackgroundTransparency = 1
LC.Position = UDim2.new(0, 0,0, 0)
LC.Size = UDim2.new(0, 751,0, 381)
LC.Visible = false



local gamepagebutton = Instance.new("ImageButton")
gamepagebutton.Parent = home
gamepagebutton.BackgroundTransparency = 1
gamepagebutton.BorderSizePixel = 0
gamepagebutton.Position = UDim2.new(0.039, 0,0.05, 0)
gamepagebutton.Size = UDim2.new(0, 100,0, 100)
gamepagebutton.Image = "http://www.roblox.com/asset/?id=11395780588"
gamepagebutton.MouseButton1Click:Connect(function()
	home.Visible = false
	gamepage.Visible = true
end)

local playerpagebutton = Instance.new("ImageButton")
playerpagebutton.Parent = home
playerpagebutton.BackgroundTransparency = 1
playerpagebutton.BorderSizePixel = 0
playerpagebutton.Position = UDim2.new(0.225, 0,0.05, 0)
playerpagebutton.Size = UDim2.new(0, 100,0, 100)
playerpagebutton.Image = "http://www.roblox.com/asset/?id=117259180607823"
playerpagebutton.MouseButton1Click:Connect(function()
	home.Visible = false
	playerpage.Visible = true
end)

local settingspagebutton = Instance.new("ImageButton")
settingspagebutton.Parent = home
settingspagebutton.BackgroundTransparency = 1
settingspagebutton.BorderSizePixel = 0
settingspagebutton.Position = UDim2.new(0.391, 0,0.05, 0)
settingspagebutton.Size = UDim2.new(0, 100,0, 100)
settingspagebutton.Image = "http://www.roblox.com/asset/?id=4492476121"
settingspagebutton.MouseButton1Click:Connect(function()
	home.Visible = false
	settingspage.Visible = true
end)


local LCB = Instance.new("ImageButton")
LCB.Parent = home
LCB.BackgroundTransparency = 1
LCB.BorderSizePixel = 0
LCB.Position = UDim2.new(0.575, 0,0.05, 0)
LCB.Size = UDim2.new(0, 100,0, 100)
LCB.Image = "http://www.roblox.com/asset/?id=8509432937"
LCB.MouseButton1Click:Connect(function()
	home.Visible = false
	LC.Visible = true
end)


local homebutton = Instance.new("TextButton")
homebutton.Parent = topbar
homebutton.Text = "Home"
homebutton.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
homebutton.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
homebutton.BorderSizePixel = 4
homebutton.TextColor3 = Color3.new(1, 1, 1)
homebutton.TextScaled = true
homebutton.Position = UDim2.new(0.83, 0,0, 0)
homebutton.Size = UDim2.new(0, 128,0, 42)
homebutton.MouseButton1Click:Connect(function()
	home.Visible = true
	gamepage.Visible = false
	playerpage.Visible = false
	settingspage.Visible = false
	LC.Visible = false
end)

local scriptholder = Instance.new("ScrollingFrame")
scriptholder.Parent = gamepage
scriptholder.BackgroundTransparency = 1
scriptholder.Position = UDim2.new(0, 0,0, 0)
scriptholder.Size = UDim2.new(0, 751,0, 381)
scriptholder.CanvasSize = UDim2.new(0, 0,10, 0)

local scriptholder2 = Instance.new("ScrollingFrame")
scriptholder2.Parent = playerpage
scriptholder2.BackgroundTransparency = 1
scriptholder2.Position = UDim2.new(0, 0,0, 0)
scriptholder2.Size = UDim2.new(0, 751,0, 381)
scriptholder2.CanvasSize = UDim2.new(0, 0,10, 0)

local placebuttons = Instance.new("UIGridLayout")
placebuttons.Parent = scriptholder
placebuttons.CellPadding = UDim2.new(0, 10, 0, 10)
placebuttons.CellSize= UDim2.new(0, 128,0, 42)

local placebuttons2 = Instance.new("UIGridLayout")
placebuttons2.Parent = scriptholder2
placebuttons2.CellPadding = UDim2.new(0, 10, 0, 10)
placebuttons2.CellSize= UDim2.new(0, 128,0, 42)

----settings----
local presentdecals = Instance.new("ScrollingFrame")
local presentaudios = Instance.new("ScrollingFrame")


presentdecals.Parent = settingspage
presentdecals.BackgroundTransparency = 1
presentdecals.Position = UDim2.new(0, 0,0, 0)
presentdecals.Size = UDim2.new(0, 207,0, 381)
presentdecals.CanvasSize = UDim2.new(0, 0,10, 0)

presentaudios.Parent = settingspage
presentaudios.BackgroundTransparency = 1
presentaudios.Position = UDim2.new(0.289, 0,0, 0)
presentaudios.Size = UDim2.new(0, 207,0, 381)
presentaudios.CanvasSize = UDim2.new(0, 0,10, 0)

local placebuttonsfordeals = Instance.new("UIGridLayout")
placebuttonsfordeals.Parent = presentdecals
placebuttonsfordeals.CellPadding = UDim2.new(0, 10, 0, 10)
placebuttonsfordeals.CellSize = UDim2.new(0, 200, 0, 50)
placebuttonsfordeals.HorizontalAlignment = Enum.HorizontalAlignment.Center
placebuttonsfordeals.SortOrder = Enum.SortOrder.LayoutOrder

local placebuttonsfordeals2 = Instance.new("UIGridLayout")
placebuttonsfordeals2.Parent = presentaudios
placebuttonsfordeals2.CellPadding = UDim2.new(0, 10, 0, 10)
placebuttonsfordeals2.CellSize = UDim2.new(0, 200, 0, 50)
placebuttonsfordeals2.HorizontalAlignment = Enum.HorizontalAlignment.Center
placebuttonsfordeals2.SortOrder = Enum.SortOrder.LayoutOrder

local title2 = Instance.new("TextLabel")
title2.Parent = presentdecals
title2.BackgroundTransparency = 0
title2.Position = UDim2.new(0, 0,0, 0)
title2.Text = "Preset decals"
title2.TextScaled = true
title2.TextColor3 = Color3.new(1, 1, 1)
title2.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
title2.BorderSizePixel =4
title2.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)

local title3 = Instance.new("TextLabel")
title3.Parent = presentaudios
title3.BackgroundTransparency = 0
title3.Text = "Preset audios"
title3.TextScaled = true
title3.TextColor3 = Color3.new(1, 1, 1)
title3.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
title3.BorderSizePixel = 4
title3.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)

local decalidd = Instance.new("TextBox")
decalidd.Parent = settingspage
decalidd.TextScaled = true
decalidd.TextColor3 = Color3.new(1, 1, 1)
decalidd.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
decalidd.BorderSizePixel = 4
decalidd.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
decalidd.Position = UDim2.new(0.654, 0,0, 0)
decalidd.Size = UDim2.new(0, 200,0, 50)
decalidd.Text = "120170236357866"
decalidd.PlaceholderText = "Decal id (for any script that allows custome decals)"

local audioid = Instance.new("TextBox")
audioid.Parent = settingspage
audioid.TextScaled = true
audioid.TextColor3 = Color3.new(1, 1, 1)
audioid.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
audioid.BorderSizePixel = 4
audioid.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
audioid.Position = UDim2.new(0.654, 0,0.147, 0)
audioid.Size = UDim2.new(0, 200,0, 50)
audioid.Text = "76806345377701"
audioid.PlaceholderText = "Audio id (for any script that allows custome audios)"

local pitche = Instance.new("TextBox")
pitche.Parent = settingspage
pitche.TextScaled = true
pitche.TextColor3 = Color3.new(1, 1, 1)
pitche.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
pitche.BorderSizePixel = 4
pitche.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
pitche.Position = UDim2.new(0.654, 0,0.302, 0)
pitche.Size = UDim2.new(0, 200,0, 50)
pitche.Text = "0.10"
pitche.PlaceholderText = "Pitch or what its called now playbackspeed (for any script that allows playback/speed speed)"

local volume = Instance.new("TextBox")
volume.Parent = settingspage
volume.TextScaled = true
volume.TextColor3 = Color3.new(1, 1, 1)
volume.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
volume.BorderSizePixel = 4
volume.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
volume.Position = UDim2.new(0.654, 0,0.454, 0)
volume.Size = UDim2.new(0, 200,0, 50)
volume.Text = "100"
volume.PlaceholderText = "Volume (for any script that allows to change volume)"

local text = Instance.new("TextBox")
text.Parent = settingspage
text.TextScaled = true
text.TextColor3 = Color3.new(1, 1, 1)
text.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
text.BorderSizePixel = 4
text.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
text.Position = UDim2.new(0.654, 0,0.609, 0)
text.Size = UDim2.new(0, 200,0, 50)
text.Text = "team Nixon join today!"
text.PlaceholderText = "Text (for any script that allows custome text)"

local Red = Instance.new("TextBox")
Red.Parent = settingspage
Red.TextScaled = true
Red.TextColor3 = Color3.new(1, 1, 1)
Red.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Red.BorderSizePixel = 4
Red.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Red.Position = UDim2.new(0.654, 0,0.764, 0)
Red.Size = UDim2.new(0, 56,0, 50)
Red.Text = "0.215686"
Red.PlaceholderText = "Red color value"

local Green = Instance.new("TextBox")
Green.Parent = settingspage
Green.TextScaled = true
Green.TextColor3 = Color3.new(1, 1, 1)
Green.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Green.BorderSizePixel = 4
Green.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Green.Position = UDim2.new(0.742, 0,0.764, 0)
Green.Size = UDim2.new(0, 56,0, 50)
Green.Text = "1"
Green.PlaceholderText = "Green color value"

local Blue = Instance.new("TextBox")
Blue.Parent = settingspage
Blue.TextScaled = true
Blue.TextColor3 = Color3.new(1, 1, 1)
Blue.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Blue.BorderSizePixel = 4
Blue.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Blue.Position = UDim2.new(0.83, 0,0.764, 0)
Blue.Size = UDim2.new(0, 56,0, 50)
Blue.Text = "0"
Blue.PlaceholderText = "Blue color value"

local othervalue = Instance.new("TextBox")
othervalue.Parent = settingspage
othervalue.TextScaled = true
othervalue.TextColor3 = Color3.new(1, 1, 1)
othervalue.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
othervalue.BorderSizePixel = 4
othervalue.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
othervalue.Position = UDim2.new(0.654, 0, 0.916, 0)
othervalue.Size = UDim2.new(0, 200,0, 32)
othervalue.Text = "50"
othervalue.PlaceholderText = "Other number value (for any script that allows to change other values)"

local decaldisplay = Instance.new("ImageLabel")
decaldisplay.Parent = settingspage
decaldisplay.Position = UDim2.new(0.92, 0,0.003, 0)
decaldisplay.Size = UDim2.new(0, 60,0, 49)


local colordisplay = Instance.new("Frame")
colordisplay.Parent = settingspage
colordisplay.Position = UDim2.new(0.92, 0,0.764, 0)
colordisplay.Size = UDim2.new(0, 60,0, 49)

----------------

-- Lighting controll page --

local idk = Instance.new("ScrollingFrame")
idk.Parent = LC
idk.Position = UDim2.new(0,0,0,0)
idk.Size = UDim2.new(0,750,0,203)
idk.BackgroundTransparency = 1

local lol = Instance.new("UIListLayout")
lol.Parent = idk

local idfk = Instance.new("ScrollingFrame")
idfk.Parent = LC
idfk.Position = UDim2.new(-0.001,0,0.591,0)
idfk.Size = UDim2.new(0,750,0,156)
idfk.BackgroundTransparency = 1

local lel = Instance.new("UIGridLayout")
lel.Parent = idfk

local Bt = Instance.new("TextBox")
Bt.Parent = idk
Bt.Text = math.random(0,100)
Bt.Position = UDim2.new(0.144,0,0,0) 
Bt.Size = UDim2.new(0,641,0,42)
Bt.TextColor3 = Color3.new(1, 1, 1)
Bt.BorderSizePixel = 4
Bt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Bt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Bt.TextScaled = true
Bt.PlaceholderText = "Put the number value you want to change brightness"

local setb = Instance.new("TextButton")
setb.Parent = idfk
setb.Text = "Set brightness"
setb.Position = UDim2.new(-0.001, 0,0, 0)
setb.Size = UDim2.new(0,109,0,42)
setb.TextColor3 = Color3.new(1, 1, 1)
setb.BorderSizePixel = 4
setb.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
setb.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
setb.TextScaled = true
setb.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.Brightness = Bt.Text 
end)

local Tt = Instance.new("TextBox")
Tt.Parent = idk
Tt.Text = math.random(0,100)
Tt.Position = UDim2.new(0.147,0,147,0) 
Tt.Size = UDim2.new(0,641,0,42)
Tt.TextColor3 = Color3.new(1, 1, 1)
Tt.BorderSizePixel = 4
Tt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Tt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Tt.TextScaled = true
Tt.PlaceholderText = "Put the number value you want to change time"

local sett = Instance.new("TextButton")
sett.Parent = idfk
sett.Text = "Set time"
sett.Position = UDim2.new(-0.001, 0,147, 0)
sett.Size = UDim2.new(0,109,0,42)
sett.TextColor3 = Color3.new(1, 1, 1)
sett.BorderSizePixel = 4
sett.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
sett.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
sett.TextScaled = true
sett.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.TimeOfDay = Tt.Text 
end)

local Ttt = Instance.new("TextBox")
Ttt.Parent = idk
Ttt.Text = math.random(0,100)
Ttt.Position = UDim2.new(0.147,0,147,0) 
Ttt.Size = UDim2.new(0,641,0,42)
Ttt.TextColor3 = Color3.new(1, 1, 1)
Ttt.BorderSizePixel = 4
Ttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Ttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Ttt.TextScaled = true
Ttt.PlaceholderText = "Put the number value you want to change fogend"

local settt = Instance.new("TextButton")
settt.Parent = idfk
settt.Text = "Set fogend"
settt.Position = UDim2.new(-0.001, 0,147, 0)
settt.Size = UDim2.new(0,109,0,42)
settt.TextColor3 = Color3.new(1, 1, 1)
settt.BorderSizePixel = 4
settt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
settt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
settt.TextScaled = true
settt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.FogEnd = Ttt.Text 
end)

local Tttt = Instance.new("TextBox")
Tttt.Parent = idk
Tttt.Text = math.random(0,100)
Tttt.Position = UDim2.new(0.147,0,147,0) 
Tttt.Size = UDim2.new(0,641,0,42)
Tttt.TextColor3 = Color3.new(1, 1, 1)
Tttt.BorderSizePixel = 4
Tttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Tttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Tttt.TextScaled = true
Tttt.PlaceholderText = "Put the number value you want to change fogstart"

local setttt = Instance.new("TextButton")
setttt.Parent = idfk
setttt.Text = "Set fogstart"
setttt.Position = UDim2.new(-0.001, 0,147, 0)
setttt.Size = UDim2.new(0,109,0,42)
setttt.TextColor3 = Color3.new(1, 1, 1)
setttt.BorderSizePixel = 4
setttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
setttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
setttt.TextScaled = true
setttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.FogStart = Tttt.Text 
end)

local redigga = Instance.new("TextBox")
redigga.Parent = idk
redigga.Text = "0"
redigga.Position = UDim2.new(0.147,0,147,0) 
redigga.Size = UDim2.new(0,641,0,42)
redigga.TextColor3 = Color3.new(1, 1, 1)
redigga.BorderSizePixel = 4
redigga.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
redigga.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
redigga.TextScaled = true
redigga.PlaceholderText = "red value"

local greenigga = Instance.new("TextBox")
greenigga.Parent = idk
greenigga.Text = "10"
greenigga.Position = UDim2.new(0.147,0,147,0) 
greenigga.Size = UDim2.new(0,641,0,42)
greenigga.TextColor3 = Color3.new(1, 1, 1)
greenigga.BorderSizePixel = 4
greenigga.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
greenigga.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
greenigga.TextScaled = true
greenigga.PlaceholderText = "green value"

local blueigga = Instance.new("TextBox")
blueigga.Parent = idk
blueigga.Text = "0"
blueigga.Position = UDim2.new(0.147,0,147,0) 
blueigga.Size = UDim2.new(0,641,0,42)
blueigga.TextColor3 = Color3.new(1, 1, 1)
blueigga.BorderSizePixel = 4
blueigga.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
blueigga.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
blueigga.TextScaled = true
blueigga.PlaceholderText = "blue value"

local settttt = Instance.new("TextButton")
settttt.Parent = idfk
settttt.Text = "Set ambient color"
settttt.Position = UDim2.new(-0.001, 0,147, 0)
settttt.Size = UDim2.new(0,109,0,42)
settttt.TextColor3 = Color3.new(1, 1, 1)
settttt.BorderSizePixel = 4
settttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
settttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
settttt.TextScaled = true
settttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.Ambient = Color3.new(redigga.Text,greenigga.Text,blueigga.Text) 
end)

local setttttt = Instance.new("TextButton")
setttttt.Parent = idfk
setttttt.Text = "Set color shift bottom color"
setttttt.Position = UDim2.new(-0.001, 0,147, 0)
setttttt.Size = UDim2.new(0,109,0,42)
setttttt.TextColor3 = Color3.new(1, 1, 1)
setttttt.BorderSizePixel = 4
setttttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
setttttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
setttttt.TextScaled = true
setttttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.ColorShift_Bottom = Color3.new(redigga.Text,greenigga.Text,blueigga.Text) 
end)

local settttttt = Instance.new("TextButton")
settttttt.Parent = idfk
settttttt.Text = "Set color shift top color"
settttttt.Position = UDim2.new(-0.001, 0,147, 0)
settttttt.Size = UDim2.new(0,109,0,42)
settttttt.TextColor3 = Color3.new(1, 1, 1)
settttttt.BorderSizePixel = 4
settttttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
settttttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
settttttt.TextScaled = true
settttttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.ColorShift_Top = Color3.new(redigga.Text,greenigga.Text,blueigga.Text) 
end)

local setttttttt = Instance.new("TextButton")
setttttttt.Parent = idfk
setttttttt.Text = "Set outdoor ambient color"
setttttttt.Position = UDim2.new(-0.001, 0,147, 0)
setttttttt.Size = UDim2.new(0,109,0,42)
setttttttt.TextColor3 = Color3.new(1, 1, 1)
setttttttt.BorderSizePixel = 4
setttttttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
setttttttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
setttttttt.TextScaled = true
setttttttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.OutdoorAmbient = Color3.new(redigga.Text,greenigga.Text,blueigga.Text) 
end)

local settttttttt = Instance.new("TextButton")
settttttttt.Parent = idfk
settttttttt.Text = "Set fog color"
settttttttt.Position = UDim2.new(-0.001, 0,147, 0)
settttttttt.Size = UDim2.new(0,109,0,42)
settttttttt.TextColor3 = Color3.new(1, 1, 1)
settttttttt.BorderSizePixel = 4
settttttttt.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
settttttttt.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
settttttttt.TextScaled = true
settttttttt.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	lighting.FogColor = Color3.new(redigga.Text,greenigga.Text,blueigga.Text) 
end)
----------------------------


local e = Instance.new("TextButton")
e.Parent = scriptholder
e.BackgroundTransparency = 0
e.Text = "Set sky"
e.Size = UDim2.new(0, 150,0, 150)
e.TextScaled = true
e.TextColor3 = Color3.new(1, 1, 1)
e.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
e.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
e.BorderSizePixel = 4
e.MouseButton1Click:Connect(function()
	local lighting = game.Lighting lighting.TimeOfDay = 10  local sky = Instance.new("Sky") sky.Parent= game.Lighting sky.SkyboxUp = "rbxassetid://" .. decalidd.Text sky.SkyboxDn = "rbxassetid://" .. decalidd.Text sky.SkyboxLf = "rbxassetid://" .. decalidd.Text sky.SkyboxRt = "rbxassetid://" .. decalidd.Text sky.SkyboxBk = "rbxassetid://" .. decalidd.Text sky.SkyboxFt = "rbxassetid://" .. decalidd.Text end)

local ee = Instance.new("TextButton")
ee.Parent = scriptholder2
ee.BackgroundTransparency = 0
ee.Text = "placholder"
ee.Size = UDim2.new(0, 150,0, 150)
ee.TextScaled = true
ee.TextColor3 = Color3.new(1, 1, 1)
ee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
ee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
ee.BorderSizePixel = 4
ee.MouseButton1Click:Connect(function()
	print("comin soon")
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Team nixon logo"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "120170236357866"
end)

local eeee = Instance.new("TextButton")
eeee.Parent = presentaudios
eeee.BackgroundTransparency = 0
eeee.Text = "All the things she said (theme)"
eeee.TextScaled = true
eeee.TextColor3 = Color3.new(1, 1, 1)
eeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeee.BorderSizePixel = 4
eeee.Size = UDim2.new(0, 150,0, 150)
eeee.MouseButton1Click:Connect(function()
	audioid.Text = "76806345377701"
	pitche.Text = "0.10"
end)

local eeeee = Instance.new("TextButton")
eeeee.Parent = scriptholder
eeeee.BackgroundTransparency = 0
eeeee.Text = "Decal spam"
eeeee.Size = UDim2.new(0, 150,0, 150)
eeeee.TextScaled = true
eeeee.TextColor3 = Color3.new(1, 1, 1)
eeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeee.BorderSizePixel = 4
eeeee.MouseButton1Click:Connect(function()
	for i, t in pairs(game.Workspace:GetDescendants()) do
		if t:IsA("Decal") then
			t:Destroy()
		end
	end
	wait(0.1)
	for i, v in pairs(game.Workspace:GetDescendants()) do if v:IsA("BasePart") then local decal1 = Instance.new("Decal") local decal2 = Instance.new("Decal") local decal3 = Instance.new("Decal") local decal4 = Instance.new("Decal") local decal5 = Instance.new("Decal") local decal6 = Instance.new("Decal") decal1.Parent =v decal2.Parent = v decal3.Parent= v decal4.Parent = v decal5.Parent= v decal5.Parent = v decal6.Parent = v decal1.Face = Enum.NormalId.Top decal2.Face = Enum.NormalId.Bottom decal3.Face = Enum.NormalId.Left decal4.Face = Enum.NormalId.Right decal5.Face = Enum.NormalId.Back decal6.Face = Enum.NormalId.Front decal1.Texture = "rbxassetid://" .. decalidd.Text decal2.Texture = "rbxassetid://" .. decalidd.Text decal3.Texture = "rbxassetid://" .. decalidd.Text decal4.Texture = "rbxassetid://" .. decalidd.Text decal5.Texture = "rbxassetid://" .. decalidd.Text decal6.Texture = "rbxassetid://" .. decalidd.Text 	
		end 
	end 
end)

local eeeeee = Instance.new("TextButton")
eeeeee.Parent = scriptholder
eeeeee.BackgroundTransparency = 0
eeeeee.Text = "Partical spam"
eeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeee.TextScaled = true
eeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeee.BorderSizePixel = 4
eeeeee.MouseButton1Click:Connect(function()
	for i, t in pairs(game.Workspace:GetDescendants()) do
		if t:IsA("ParticleEmitter") then
			t:Destroy()
		end
	end
	wait(0.1)
	for i, v in pairs(game.Workspace:GetDescendants()) do if v:IsA("BasePart") then local partical = Instance.new("ParticleEmitter") partical.Texture = "rbxassetid://" .. decalidd.Text partical.Parent = v 	
		end 
	end 
end)

local eeeeeee = Instance.new("TextButton")
eeeeeee.Parent = scriptholder
eeeeeee.BackgroundTransparency = 0
eeeeeee.Text = "Play audio"
eeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeee.TextScaled = true
eeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeee.BorderSizePixel = 4
eeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Sound") then
			v:Destroy()
		end
	end
	wait(0.1)
	local sound = Instance.new("Sound")
	sound.PlaybackSpeed = pitche.Text
	sound.Looped = true
	sound.Volume = volume.Text
	sound.Parent = game.Workspace
	sound.SoundId = "rbxassetid://" .. audioid.Text
	sound:Play()
end)

local eeeeeeee = Instance.new("TextButton")
eeeeeeee.Parent = scriptholder
eeeeeeee.BackgroundTransparency = 0
eeeeeeee.Text = "666"
eeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeee.TextScaled = true
eeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeee.BorderSizePixel = 4
eeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local fire  = Instance.new("Fire")
			fire.Parent = v
			fire.Size = 10

			v.BrickColor = BrickColor.new("Really black")

			local outline = Instance.new("SelectionBox")
			outline.Parent = v
			outline.LineThickness = 0.05
			outline.Color3 = Color3.new(1, 0, 0)
			outline.Adornee = v
			outline.SurfaceTransparency = 1
		end
	end
end)

local eeeeeeeee = Instance.new("TextButton")
eeeeeeeee.Parent = scriptholder
eeeeeeeee.BackgroundTransparency = 0
eeeeeeeee.Text = "Hint"
eeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeee.TextScaled = true
eeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeee.BorderSizePixel = 4
eeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Hint") then
			v:Destroy()
		end
	end
	wait(0.1)
	local hint = Instance.new("Hint")
	hint.Parent = game.Workspace
	hint.Text = "" .. text.Text
end)

local eeeeeeeeee = Instance.new("TextButton")
eeeeeeeeee.Parent = scriptholder
eeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeee.Text = "Message"
eeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeee.TextScaled = true
eeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeee.BorderSizePixel = 4
eeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Message") then
			v:Destroy()
		end
	end
	local message = Instance.new("Message")
	message.Parent = game.Workspace
	message.Text = "" .. text.Text
end)

local eeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeee.Parent = scriptholder
eeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeee.Text = "Explode everything"
eeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeee.TextScaled = true
eeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local explosion = Instance.new("Explosion")
			explosion.Parent = v
			explosion.Position = v.Position
		end
	end
end)

local eeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeee.Text = "Disco parts"
eeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeee.TextScaled = true
eeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.1)
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				v.BrickColor = BrickColor.Random()
			end
		end
	end
end)

local eeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeee.Text = "Random exploisions"
eeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.9)
		local boom = Instance.new("Explosion")
		boom.Parent = game.Workspace
		boom.Position = Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))
	end
end)

local eeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeee.Text = "Rain parts"
eeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(1)
		local boom = Instance.new("Part")
		boom.Parent = game.Workspace
		boom.Position = Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))
	end
end)

local eeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeee.Text = "UnAnchore all"
eeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Anchored= false
		end
	end
end)

local eeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeee.Text = "Spawn decals in the air"
eeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.9)
		local orb = Instance.new("Part")
		orb.Transparency = 1
		orb.Size = Vector3.new(20,20,20)
		orb.Anchored = true
		orb.CanCollide = false
		orb.Parent = game.Workspace
		orb.Position = Vector3.new(math.random(-1000,1000), math.random(-1000,1000), math.random(-1000,1000))
		orb.Shape = "Ball"
		local decal = Instance.new("Decal")
		local decal2 = Instance.new("Decal")
		local decal3 = Instance.new("Decal")
		local decal4 = Instance.new("Decal")
		local decal5 = Instance.new("Decal")
		local decal6 = Instance.new("Decal")
		decal.Parent = orb
		decal2.Parent = orb
		decal3.Parent = orb
		decal4.Parent = orb
		decal5.Parent = orb
		decal6.Parent = orb
		decal.Face = Enum.NormalId.Top
		decal2.Face = Enum.NormalId.Bottom
		decal3.Face = Enum.NormalId.Left
		decal4.Face = Enum.NormalId.Right
		decal5.Face = Enum.NormalId.Front
		decal6.Face = Enum.NormalId.Back
		decal.Texture = "rbxassetid://" .. decalidd.Text
		decal2.Texture = "rbxassetid://" .. decalidd.Text
		decal3.Texture = "rbxassetid://" .. decalidd.Text
		decal4.Texture = "rbxassetid://" .. decalidd.Text
		decal5.Texture = "rbxassetid://" .. decalidd.Text
		decal6.Texture = "rbxassetid://" .. decalidd.Text
	end
end)

local eeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeee.Text = "Baseplate"
eeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local base = Instance.new("Part")
	base.Parent = game.Workspace
	base.Anchored = true
	base.Size = Vector3.new(2048, 16, 2048)
	base.Position = Vector3.new(0, -3.5, 0)
end)

local spookyscary = Instance.new("TextButton")
spookyscary.Parent = presentaudios
spookyscary.BackgroundTransparency = 0
spookyscary.Text = "c00lkidd song"
spookyscary.TextScaled = true
spookyscary.TextColor3 = Color3.new(1, 1, 1)
spookyscary.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
spookyscary.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
spookyscary.BorderSizePixel = 4
spookyscary.Size = UDim2.new(0, 150,0, 150)
spookyscary.MouseButton1Click:Connect(function()
	audioid.Text = "116210988137218"
	pitche.Text = "0.3"
	volume.Text = "100"
end)

local bloodpop = Instance.new("TextButton")
bloodpop.Parent = presentaudios
bloodpop.BackgroundTransparency = 0
bloodpop.Text = "Blood pop bypassed by skyl0rd"
bloodpop.TextScaled = true
bloodpop.TextColor3 = Color3.new(1, 1, 1)
bloodpop.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
bloodpop.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
bloodpop.BorderSizePixel = 4
bloodpop.Size = UDim2.new(0, 150,0, 150)
bloodpop.MouseButton1Click:Connect(function()
	audioid.Text = "85243009071554"
	pitche.Text = "0.15"
	volume.Text = "100"
end)

local eeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeee.Text = "Rain spawns"
eeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.9)
		local sspawn = Instance.new("SpawnLocation")
		sspawn.Position = Vector3.new(math.random(-1000,1000), math.random(-1000,1000), math.random(-1000,1000))
		sspawn.Parent = game.Workspace
	end
end)

local eeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeee.Text = "Rain decals"
eeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.9)
		local decal = Instance.new("Decal")
		local decal2 = Instance.new("Decal")
		local decalpartXD = Instance.new("Part")
		decalpartXD.Size = Vector3.new(37.422, 39.617, 0.001)
		decalpartXD.CanCollide = false
		decalpartXD.Anchored = false
		decalpartXD.Transparency = 1
		decalpartXD.Parent = game.Workspace
		decalpartXD.Position = Vector3.new(math.random(-1000,1000), math.random(-1000,1000), math.random(-1000,1000))
		decal.Parent = decalpartXD
		decal2.Parent = decalpartXD
		decal.Texture = "rbxassetid://" .. decalidd.Text
		decal2.Texture = "rbxassetid://" .. decalidd.Text
		decal.Face = Enum.NormalId.Front
		decal2.Face = Enum.NormalId.Back
	end
end)

local mrbean = Instance.new("TextButton")
mrbean.Parent = presentdecals
mrbean.BackgroundTransparency = 0
mrbean.Text = "Mr bean"
mrbean.TextScaled = true
mrbean.TextColor3 = Color3.new(1, 1, 1)
mrbean.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
mrbean.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
mrbean.BorderSizePixel = 4
mrbean.Size = UDim2.new(0, 150,0, 150)
mrbean.MouseButton1Click:Connect(function()
	decalidd.Text="4936403957"
end)

local c00l = Instance.new("TextButton")
c00l.Parent = presentdecals
c00l.BackgroundTransparency = 0
c00l.Text = "c00lkidd"
c00l.TextScaled = true
c00l.TextColor3 = Color3.new(1, 1, 1)
c00l.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
c00l.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
c00l.BorderSizePixel = 4
c00l.Size = UDim2.new(0, 150,0, 150)
c00l.MouseButton1Click:Connect(function()
	decalidd.Text="85320321741633"
end)

local eeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeee.Text = "Fire spam"
eeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, p in pairs(game.Workspace:GetDescendants()) do
		if p:IsA("Fire") then
			p:Destroy()
		end
	end
	wait(0.9)
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local fire = Instance.new("Fire")
			fire.Parent = v
			fire.Size = othervalue.Text
			fire.Heat = othervalue.Text
			fire.Color = Color3.new(Red.text, Green.text, Blue.text)
			fire.SecondaryColor = Color3.new(Red.text, Green.text, Blue.text)
		end
	end
end)

local eeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeee.Text = "Sparkelz spam"
eeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, p in pairs(game.Workspace:GetDescendants()) do
		if p:IsA("Sparkles") then
			p:Destroy()
		end
	end
	wait(0.9)
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local fire = Instance.new("Sparkles")
			fire.Parent = v
			fire.Color = Color3.new(Red.text, Green.text, Blue.text)
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeee.Text = "Decal spam on anything named Part"
eeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Decal") then
			v:Destroy()
		end
	end
	wait(0.9)
	for i, p in pairs(game.Workspace:GetDescendants()) do
		if p.Name == "Part" then
			local decal = Instance.new("Decal")
			decal.Parent = p
			local decal2 = Instance.new("Decal")
			decal2.Parent = p
			local decal3 = Instance.new("Decal")
			decal3.Parent = p
			local decal4 = Instance.new("Decal")
			decal4.Parent = p
			local decal5 = Instance.new("Decal")
			decal5.Parent = p
			local decal6 = Instance.new("Decal")
			decal6.Parent = p
			decal.Texture = "rbxassetid://" .. decalidd.Text
			decal2.Texture = "rbxassetid://" .. decalidd.Text
			decal3.Texture = "rbxassetid://" .. decalidd.Text
			decal4.Texture = "rbxassetid://" .. decalidd.Text
			decal5.Texture = "rbxassetid://" .. decalidd.Text
			decal6.Texture = "rbxassetid://" .. decalidd.Text
			decal.Face = Enum.NormalId.Back
			decal2.Face = Enum.NormalId.Front
			decal3.Face = Enum.NormalId.Left
			decal4.Face = Enum.NormalId.Right
			decal5.Face = Enum.NormalId.Top
			decal6.Face = Enum.NormalId.Bottom
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeee.Text = "Outline"
eeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("SelectionBox") then
			v:Destroy()
		end
	end
	wait(0.1)
	for i, p in pairs(game.Workspace:GetDescendants()) do
		if p:IsA("BasePart") then
			local outline = Instance.new("SelectionBox")
			outline.Parent = p
			outline.LineThickness = 0.05
			outline.Adornee = p
			outline.SurfaceTransparency = 1
			outline.Transparency = 0
			outline.Color3 = Color3.new(Red.Text, Green.Text, Blue.Text)
		end
	end
end)





local eeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeee.Text = "Disco decal sky"
eeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local skymesh = Instance.new("SpecialMesh")
	local sky = Instance.new("Part")
	sky.Parent = game.Workspace
	sky.Name = "weird Sky"
	sky.Anchored = true
	sky.CanCollide = false
	skymesh.Parent = sky
	skymesh.Scale = Vector3.new(-9999,-9999,-9999)
	skymesh.MeshType = Enum.MeshType.FileMesh
	skymesh.TextureId = "rbxassetid://" .. decalidd.Text
	while true do
		wait(0.1)
		skymesh.VertexColor = Vector3.new(math.random(), math.random(), math.random())
	end

end)

local eeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeee.Text = "Disco sky"
eeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local skymesh = Instance.new("SpecialMesh")
	local sky = Instance.new("Part")
	sky.Parent = game.Workspace
	sky.Name = "weird Sky"
	sky.Anchored = true
	sky.CanCollide = false
	skymesh.Parent = sky
	skymesh.Scale = Vector3.new(-9999,-9999,-9999)
	skymesh.MeshType = Enum.MeshType.FileMesh
	while true do
		wait(0.1)
		sky.BrickColor = BrickColor.Random()
	end

end)

local eeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Remove disco and disco decal sky"
eeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "weird Sky" then
			v:Destroy()
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Disco"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local disco = Instance.new("ColorCorrectionEffect")
	disco.Parent = game.Lighting
	game.Lighting.TimeOfDay = 10
	while true do
		wait(0.1)
		disco.TintColor = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.FogColor = Color3.new(math.random(), math.random(), math.random())
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Clear lighting"
eeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Lighting:ClearAllChildren()
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Rotate all parts"
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Orientation = Vector3.new(math.random(1,10000), math.random(1,10000), math.random(1,10000))
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Nixon message's"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local message = Instance.new("Message")
	message.Parent = game.Workspace

	while true do
		wait(5)
		message.Text = "Nixon: NO ONE CAN STOP ME!"
		wait(5)
		message.Text = "Nixon: THIS SERVER IS NOW OWNED BY TEAM NIXON"
		wait(5)
		message.Text = "Nixon: ENJOY OUR REVAMP OF THIS GAME"
		wait(5)
		message.Text = "Nixon: ALL WELL HAIL TO NIXON"
		wait(5)
		message.Text = "Nixon: LONG LIVE TEAM NIXON!"
		wait(5)
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Disco fog"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Lighting.FogEnd = 500
	game.Lighting.FogStart = 0
	while true do
		wait(0.1)
		game.Lighting.FogColor = Color3.new(math.random(), math.random(), math.random())
	end
end)

local Nixonlol = Instance.new("TextButton")
Nixonlol.Parent = presentdecals
Nixonlol.BackgroundTransparency = 0
Nixonlol.Text = "Nixon"
Nixonlol.Size = UDim2.new(0, 150,0, 150)
Nixonlol.TextScaled = true
Nixonlol.TextColor3 = Color3.new(1, 1, 1)
Nixonlol.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
Nixonlol.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
Nixonlol.BorderSizePixel = 4
Nixonlol.MouseButton1Click:Connect(function()
	decalidd.Text = "87390363602058"
end)

local g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Rip g00by"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "113197003713530"
end)

local gg = Instance.new("TextButton")
gg.Parent = presentaudios
gg.BackgroundTransparency = 0
gg.Text = "Spooky scary skeletons"
gg.Size = UDim2.new(0, 150,0, 150)
gg.TextScaled = true
gg.TextColor3 = Color3.new(1, 1, 1)
gg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gg.BorderSizePixel = 4
gg.MouseButton1Click:Connect(function()
	audioid.Text = "77484784570543"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local ggg = Instance.new("TextButton")
ggg.Parent = presentaudios
ggg.BackgroundTransparency = 0
ggg.Text = "Chop suey!"
ggg.Size = UDim2.new(0, 150,0, 150)
ggg.TextScaled = true
ggg.TextColor3 = Color3.new(1, 1, 1)
ggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
ggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
ggg.BorderSizePixel = 4
ggg.MouseButton1Click:Connect(function()
	audioid.Text = "91759992825737"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "NOOT NOOT"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "109928136872365"
	pitche.Text = "1"
	volume.Text = "100"
end)

local ggggg = Instance.new("TextButton")
ggggg.Parent = presentdecals
ggggg.BackgroundTransparency = 0
ggggg.Text = "Team nixon logo 2"
ggggg.Size = UDim2.new(0, 150,0, 150)
ggggg.TextScaled = true
ggggg.TextColor3 = Color3.new(1, 1, 1)
ggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
ggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
ggggg.BorderSizePixel = 4
ggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "127235748147057"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "Scary face"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "10755920324"
end)

local ggggggg = Instance.new("TextButton")
ggggggg.Parent = presentaudios
ggggggg.BackgroundTransparency = 0
ggggggg.Text = "Scary speed"
ggggggg.Size = UDim2.new(0, 150,0, 150)
ggggggg.TextScaled = true
ggggggg.TextColor3 = Color3.new(1, 1, 1)
ggggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
ggggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
ggggggg.BorderSizePixel = 4
ggggggg.MouseButton1Click:Connect(function()
	audioid.Text = "137501501768494"
	volume.Text = "100"
	pitche.Text = "1"
end)

local gggggggg = Instance.new("TextButton")
gggggggg.Parent = presentaudios
gggggggg.BackgroundTransparency = 0
gggggggg.Text = "Lift off!"
gggggggg.Size = UDim2.new(0, 150,0, 150)
gggggggg.TextScaled = true
gggggggg.TextColor3 = Color3.new(1, 1, 1)
gggggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggggg.BorderSizePixel = 4
gggggggg.MouseButton1Click:Connect(function()
	audioid.Text = "113271702672542"
	volume.Text = "100"
	pitche.Text = "0.2"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Mesh spam"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Part") then
			v.Shape = "Ball"
		end
	end
end)




local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "logo 3"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "79966898733683"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "World tour!"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "124175949228677"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "LuaC0W team"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "85440521751564"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "Logo 4"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "139977118398081"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "RobloxALT"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "72524583269311"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "Bodypartz"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "127653283576622"
	volume.Text = "100"
	pitche.Text = "1"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "Robot rock"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "7046088029"
	volume.Text = "100"
	pitche.Text = "1"

end)


local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "Wonga"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "136201301642679"
	volume.Text = "100"
	pitche.Text = "0.1"
end)


local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "k00pkidd sparta remix"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "85275274357375"
	volume.Text = "100"
	pitche.Text = "0.1"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "c00l music (the return of the tres)"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "130264930369201"
	volume.Text = "100"
	pitche.Text = "0.1"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "Russain music"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "125065114804699"
	volume.Text = "100"
	pitche.Text = "0.1"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "king von phonk"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "120928196621547"
	volume.Text = "100"
	pitche.Text = "0.1"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "ToadRoast REBORN"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	---ToadRoast REBORN---
	---Scipted by NixonDoesLua---
	local warning = Instance.new("Message")
	warning.Parent = game.Workspace
	warning.Text = "ToadRoast REBORN created by NixonDoesLua"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 10"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 9"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 8"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 7"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 6"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 5"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 4"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 3"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 2"
	wait(1)
	warning.Text = "ITS GONNA START RAINING MEN IN 1"

	wait(0)

	warning.Text = "You have been WARNERD..."

	wait(1)

	warning.Parent = game.Lighting
	wait(1)

	print("lel")

	wait(1)
	local music = Instance.new("Sound")
	music.Parent = game.Workspace
	music.Looped = true
	music.SoundId = "rbxassetid://87792473318538"
	music.Volume = 100
	music.PlaybackSpeed = 0.1
	music:Play()
	wait(1)
	local hint = Instance.new("Hint")
	hint.Parent = game.Workspace
	hint.Text = "GET TOAD ROASTED BY NIXON LEL"
	wait(1)
	local message2 = Instance.new("Message")
	message2.Parent = game.Workspace
	message2.Text = "ITS RAINING MEN"
	wait(1)

	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Anchored = false
		end
	end
	wait(1)
	while true do 
		wait(0.5)
		local toad = Instance.new("Part")
		toad.Parent = game.Workspace
		toad.Position = Vector3.new(math.random(-500,500), math.random(50,300), math.random(-500,500))Vector3.new(math.random(-1000,1000), math.random(-1000,1000), math.random(-1000,1000))
		toad.Size = Vector3.new(57.525, 69.455, 50)
		toad.Anchored = false
		toad.CanCollide = false

		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = "rbxassetid://1009824073"
		mesh.TextureId = "rbxassetid://1009824086"
		mesh.Parent = toad

		local OW = Instance.new("Sound")
		OW.Parent = toad
		OW.SoundId = "rbxassetid://140544724441369"
		OW:Play()

		game.Lighting.TimeOfDay = 10 local sky = Instance.new("Sky") sky.Parent = game.Lighting sky.SkyboxUp = "rbxassetid://759765631" sky.SkyboxDn = "rbxassetid://759765631" sky.SkyboxLf = "rbxassetid://759765631" sky.SkyboxRt = "rbxassetid://759765631" sky.SkyboxBk = "rbxassetid://759765631" sky.SkyboxFt = "rbxassetid://759765631" 
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Oh yeah mr.krabs"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()

	local ohyeahmrkrabz = Instance.new("Sound")
	ohyeahmrkrabz.Parent = game.Workspace
	ohyeahmrkrabz.PlaybackSpeed = 0.1
	ohyeahmrkrabz.Volume = 100
	ohyeahmrkrabz.SoundId = "rbxassetid://94377273043824"
	ohyeahmrkrabz.Looped = true
	ohyeahmrkrabz:Play()
	wait(5)
	game.Lighting.TimeOfDay = 10
	local krabssky = Instance.new("Sky")
	krabssky.Parent = game.Lighting
	krabssky.SkyboxBk = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SkyboxFt = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SkyboxLf = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SkyboxRt = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SkyboxUp = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SkyboxDn = "http://www.roblox.com/asset/?id=861387966"
	krabssky.MoonTextureId = "http://www.roblox.com/asset/?id=861387966"
	krabssky.SunTextureId = "http://www.roblox.com/asset/?id=861387966"

	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local krab1 = Instance.new("Decal")
			local krab2 = Instance.new("Decal")
			local krab3 = Instance.new("Decal")
			local krab4 = Instance.new("Decal")
			local krab5 = Instance.new("Decal")
			local krab6 = Instance.new("Decal")

			krab1.Parent = v
			krab2.Parent = v
			krab3.Parent = v
			krab4.Parent = v
			krab5.Parent = v
			krab6.Parent = v

			krab1.Face = Enum.NormalId.Top
			krab2.Face = Enum.NormalId.Bottom
			krab3.Face = Enum.NormalId.Left
			krab4.Face = Enum.NormalId.Right
			krab5.Face = Enum.NormalId.Front
			krab6.Face = Enum.NormalId.Back

			krab1.Texture = "http://www.roblox.com/asset/?id=861387966"
			krab2.Texture = "http://www.roblox.com/asset/?id=861387966"
			krab3.Texture = "http://www.roblox.com/asset/?id=861387966"
			krab4.Texture = "http://www.roblox.com/asset/?id=861387966"
			krab5.Texture = "http://www.roblox.com/asset/?id=861387966"
			krab6.Texture = "http://www.roblox.com/asset/?id=861387966"

			v.Anchored = false
		end
	end

	local mrkrabhint = Instance.new("Hint")
	mrkrabhint.Parent = game.Workspace
	mrkrabhint.Text = "oh yeah mr krabs, AHHHHHHHHHHH"

	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then
			local partkrab  = Instance.new("ParticleEmitter")
			partkrab.Parent = v.Character.Head
			partkrab.LightEmission = 100
			partkrab.Texture = "http://www.roblox.com/asset/?id=861387966"
		end
	end

	local ahhh = Instance.new("ParticleEmitter")
	ahhh.Parent = game.Workspace.Terrain
	ahhh.LightEmission = 100
	ahhh.Size = NumberSequence.new(100)
	ahhh.Texture = "http://www.roblox.com/asset/?id=861387966"

	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("SpecialMesh") then
			v.MeshId = "rbxassetid://451722141"
			v.TextureId = "rbxassetid://451722180"
		end
	end
	print("MR KRABZZZZZ")
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentaudios
gggggg.BackgroundTransparency = 0
gggggg.Text = "Dancin (theme 2)"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	audioid.Text = "115573318430374"
	volume.Text = "100"
	pitche.Text = "0.1"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Disco chacter (R6)"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(1)
		game.Players.LocalPlayer.Character["Head"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["HumanoidRootPart"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["Torso"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["Left Arm"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["Left Leg"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["Right Arm"].Color = Color3.new(math.random(), math.random(), math.random())
		game.Players.LocalPlayer.Character["Right Leg"].Color = Color3.new(math.random(), math.random(), math.random())
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Become peter griffin (bibacul accarat)"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character["Head"].Transparency = 1
	game.Players.LocalPlayer.Character["HumanoidRootPart"].Transparency = 1
	game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
	game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
	game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
	game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1

	local peter = Instance.new("SpecialMesh")
	peter.Parent = game.Players.LocalPlayer.Character.Torso
	peter.MeshId = "rbxassetid://16094627662"
	peter.TextureId = "rbxassetid://16094627696"
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50

	local sound = Instance.new("Sound")
	sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	sound.Looped = true
	sound.PlaybackSpeed = 0.2
	sound.SoundId = "rbxassetid://73324775979494"
	sound:Play()
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Set walkspeed"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(othervalue.Text)
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Respawn"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Heal"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 100
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "God"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 999999999999999
	while true do 
		wait(0)
			game.Players.LocalPlayer.Character.Humanoid.Health = 999999999999999
	end

end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Noclip"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		game.Players.LocalPlayer.Character["HumanoidRootPart"].CanCollide = false
		game.Players.LocalPlayer.Character["Torso"].CanCollide = false
		game.Players.LocalPlayer.Character["Head"].CanCollide = false
	end
end)





local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Bomb vest reborn"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local thanksforusing = Instance.new("Message")
	thanksforusing.Text = "Thanks for using bomb vest reborn by nixondoeslua"
	thanksforusing.Parent = game.Players.LocalPlayer.PlayerGui
	wait(5)
	thanksforusing:Destroy()
	wait(1)
	local loading = Instance.new("Hint")
	loading.Parent = game.Players.LocalPlayer.PlayerGui
	wait(1)
	loading.Text = "Fetching local player"
	local player = game.Players.LocalPlayer
	loading.Text = "Fetched local player!"
	wait(1)
	loading.Text = "Loading avatar"
	local vest = Instance.new("Decal")
	vest.Face = Enum.NormalId.Front
	vest.Parent = player.Character["Torso"]
	vest.Texture = "http://www.roblox.com/asset/?id=14095983270"
	loading.Text = "Loaded avatar!"
	wait(1)
	loading.Text = "Loading UI"
	local bombgui = Instance.new("ScreenGui")
	bombgui.Parent = player.PlayerGui

	local bomb = Instance.new("TextButton")
	bomb.Position = UDim2.new(0.45, 0,0.45, 0)
	bomb.Parent = bombgui
	bomb.Size = UDim2.new(0, 100,0, 100)
	bomb.Text = "Explode bomb"
	loading.Text = "Loaded UI!"
	wait(1)
	loading.Text = "Loading bomb script"
	bomb.MouseButton1Click:Connect(function()
		local fire = Instance.new("Fire")
		fire.Size = 10
		fire.Parent = player.Character["Torso"]
		wait(3)
		local explode = Instance.new("Explosion")
		explode.Parent = player.Character["Torso"]
		explode.Position = player.Character["Torso"].Position
		explode.BlastRadius = 10000 --- you can change this if you want
		explode.BlastPressure = 10000 --- you can change this if you want
		player.Character.Color = Color3.new(0, 0, 0)
		vest:Destroy()
	end)

	loading.Text = "Loaded bomb vest script!"
	wait(5)
	loading:Destroy()
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "Theme 3"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "89241286903597"
	pitche.Text = "0.8"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "better off alone (old team stickman song)"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "124383118098366"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "k00p"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "1839246711"
	pitche.Text = "0.8"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "jumpstyle loop"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "134359663422051"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "welcome to my crib"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "76767664941313"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "theme 4"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "140181911183724"
	pitche.Text = "1.2"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "W speed"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "131434144622694"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "j*b (dont play its scary)"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "138877510241669"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "Hacked!"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "14173843047"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "Lua"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "7574834141"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "java"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "110060489826021"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "Partical"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "92170866159866"
end)

local gggggg = Instance.new("TextButton")
gggggg.Parent = presentdecals
gggggg.BackgroundTransparency = 0
gggggg.Text = "skrub"
gggggg.Size = UDim2.new(0, 150,0, 150)
gggggg.TextScaled = true
gggggg.TextColor3 = Color3.new(1, 1, 1)
gggggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggggg.BorderSizePixel = 4
gggggg.MouseButton1Click:Connect(function()
	decalidd.Text = "136074668432415"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Particals 2 (Terrain)"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local parti = Instance.new("ParticleEmitter")
	parti.Parent = game.Workspace.Terrain
	parti.Size = NumberSequence.new(100)
	parti.Texture = "rbxassetid://" .. decalidd.Text
	parti.Speed = NumberRange.new(100)
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Particals 3 (Player's torso)"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then
			local partkrab  = Instance.new("ParticleEmitter") --- if ur wondering why the local name is partkrab its cuz i reused th partical script i the mr krabs script
			partkrab.Parent = v.Character["Torso"]
			partkrab.SpreadAngle = Vector2.new(500, 500)
			partkrab.Texture = "rbxassetid://" .. decalidd.Text
		end
	end
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "For no reason at all"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "110134889946432"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "Not like us"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "81934021729551"
	pitche.Text = "0.11"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "Not like us 2"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "109002831077371"
	pitche.Text = "1"
	volume.Text = "100"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Texture spam"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, p in pairs(game.Workspace:GetDescendants()) do
		if p:IsA("Texture") or p:IsA("Decal") then
			p:Destroy() 
		end
	end
	wait(0.1)
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local krab1 = Instance.new("Texture") -- reused the decal spam on mr krabs script cuz am lazy lel
			local krab2 = Instance.new("Texture")
			local krab3 = Instance.new("Texture")
			local krab4 = Instance.new("Texture")
			local krab5 = Instance.new("Texture")
			local krab6 = Instance.new("Texture")

			krab1.Parent = v
			krab2.Parent = v
			krab3.Parent = v
			krab4.Parent = v
			krab5.Parent = v
			krab6.Parent = v

			krab1.Face = Enum.NormalId.Top
			krab2.Face = Enum.NormalId.Bottom
			krab3.Face = Enum.NormalId.Left
			krab4.Face = Enum.NormalId.Right
			krab5.Face = Enum.NormalId.Front
			krab6.Face = Enum.NormalId.Back

			krab1.Texture = "rbxassetid://" .. decalidd.Text
			krab2.Texture = "rbxassetid://" .. decalidd.Text
			krab3.Texture = "rbxassetid://" .. decalidd.Text
			krab4.Texture = "rbxassetid://" .. decalidd.Text
			krab5.Texture = "rbxassetid://" .. decalidd.Text
			krab6.Texture = "rbxassetid://" .. decalidd.Text
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Jumpscare"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, p in pairs(game.Players:GetDescendants()) do
		if p:IsA("Player") then
			local jumpscare = Instance.new("ScreenGui")
			jumpscare.Parent = p.PlayerGui

			local image = Instance.new("ImageLabel")
			image.Size = UDim2.new(1,0,1,0)
			image.Position = UDim2.new(0, 0, 0, 0)
			image.Parent = jumpscare
			image.Image = "rbxassetid://" .. decalidd.Text

			local scream = Instance.new("Sound")
			scream.Parent = jumpscare
			scream.SoundId = "rbxassetid://140028279221307" 
			scream:Play()
			wait(5.396)
			jumpscare:Destroy()
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "ScreenGUI all"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, p in pairs(game.Players:GetDescendants()) do
		if p:IsA("Player") then
			local jumpscare = Instance.new("ScreenGui")
			jumpscare.Parent = p.PlayerGui

			local image = Instance.new("ImageLabel")
			image.Size = UDim2.new(1,0,1,0)
			image.Position = UDim2.new(0, 0, 0, 0)
			image.Parent = jumpscare
			image.Image = "rbxassetid://" .. decalidd.Text

			local texttt = Instance.new("TextLabel")
			texttt.Parent = jumpscare
			texttt.TextScaled = true
			texttt.Text = "" .. text.Text
			texttt.Position = UDim2.new(0.189, 0, 0.857, 0)
			texttt.Size = UDim2.new(0.614, 0, 0, 50)

			while true do
				wait(0)
				image.Rotation += 1
			end

			while true do
				wait(0)
				texttt.TextColor3 += Color3.new(0.001, 0.001, 0.001)
			end
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Face"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, f in pairs(game.Players:GetDescendants()) do
		if f.Name == "Faceee" then
			f:Destroy()
		end
	end
	wait(0.1)
	for i, p in pairs(game.Players:GetDescendants()) do
		if p:IsA("Player") then
			p.Character["Head"].Transparency = 1

			local face = Instance.new("BillboardGui")
			face.Parent = p.Character["Head"]
			face.Name = "Faceee"
			face.Size = UDim2.new(2.5,0,2.5,0)
			face.Adornee = p.Character["Head"]
			face.ClipsDescendants = true
			face.AlwaysOnTop = true
			face.StudsOffset=Vector3.new(0,0.2,0)

			local image =Instance.new("ImageLabel")
			image.Parent = face
			image.Size = UDim2.new(1,0, 1,0)
			image.Image = "rbxassetid://" .. decalidd.Text
			image.BackgroundTransparency = 1
			image.BorderSizePixel = 0
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Tranparency"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for  i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			task.spawn(function()
				while true do
					wait(1)
					v.Transparency = math.random(0, 1)			
				end
			end)
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Show all parts"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Transparency == 1 then
				v.Transparency = 0
			end	
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "spam errors in console"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for  i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			task.spawn(function()
				while true do
					wait(1)
					local error = math.random(nil, nil)		
				end
			end)
		end
	end
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "Unlock it X better off alone"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "101020749236170"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "king von 2 (non phonk)"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "118819258128779"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "18"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "87744462419495"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "still dre"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "117137820246363"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "LOUD ASS MOAN"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "117720429377527"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "b0bby 2 pist0lz bypassed"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "120168280297780"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "N WORD HARD R BYPASSED"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "105293548609961"
	pitche.Text = "1"
	volume.Text = "100"
end)

local gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = "Dont disrespect"
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "106033053186989"
	pitche.Text = "1"
	volume.Text = "100"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "disco lighting"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(1)

		game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.FogColor = Color3.new(math.random(), math.random(), math.random())
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Force day"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		game.Lighting.TimeOfDay = 10
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Clear workspace"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name == "Terrain" then
				continue
			end

			if v.Name == "Humanoid" then
				continue
			end

			v:Destroy()
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Loop spawn parts"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(1)
		local part = Instance.new("Part")
		part.Parent = game.Workspace
		part.Position = game.Players.LocalPlayer.Character["Head"].Position
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "fog"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()

	game.Lighting.FogEnd = 500
	while true do 
		wait(1)	
		game.Lighting.FogColor = Color3.new(0.215686, 1, 0)
		wait(1)
		game.Lighting.FogColor = Color3.new(0, 1, 0.968627)
	end
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "luac0w team other decal"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "127818719624224"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Jumpscare 2"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "94222673532435"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Nixon's hackers co"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "71953411750091"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "evilx00jguy_dude worl tour"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "98110394582024"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "LuaC0Ws jumpscare"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "70730741001395"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Tom nook"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "76683980496610"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "LuaC0W logo"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "77154143441543"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "team nixon logo 3"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "114416764604217"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "evilx00jguy_dude fixxed"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "124019666438406"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "FE"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "83160373245368"
end)

local eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Clown"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "7649752708"
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Weird sky"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Lighting.TimeOfDay = 10
	local krabssky = Instance.new("Sky")
	krabssky.Parent = game.Lighting
	krabssky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	krabssky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	krabssky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	krabssky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	krabssky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	krabssky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. decalidd.Text

	while true do
		wait(0.1)
		krabssky.SkyboxOrientation = Vector3.new(math.random(1, 360), math.random(1, 360), math.random(1, 360))
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Time thing"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local nixon = 0
	while true do
		wait(0.1)
		nixon = nixon + 1

		game.Lighting.TimeOfDay = nixon
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "particals 4"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, t in pairs(game.Workspace:GetDescendants()) do
		if t:IsA("ParticleEmitter") then
			t:Destroy()
		end
	end
	wait(0.1)
	for i, v in pairs(game.Workspace:GetDescendants()) do if v:IsA("BasePart") then local partical = Instance.new("ParticleEmitter") partical.Texture = "rbxassetid://" .. decalidd.Text partical.Parent = v  partical.SpreadAngle = Vector2.new(360, 360)	
		end 
	end 
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "kick others"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then

			if v.Name == game.Players.LocalPlayer.Name then
				continue
			end

			v:Kick("Fuck you")

			print("kicked:" .. v.Name)
		end
	end
end)

local eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "privet server"
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.1)
		for i, v in pairs(game.Players:GetDescendants()) do
			if v:IsA("Player") then

				if v.Name == game.Players.LocalPlayer.Name then
					continue
				end

				v:Kick("Fuck you")

				print("kicked:" .. v.Name)
			end
		end
	end
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'Better bloodpop'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "133251269532695"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = '18 (non jumpstyle or hardstyle)'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "140292888574146"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'spooky scary funk'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "100828050594137"
	pitche.Text = "1"
	volume.Text = "100"
end)

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "Son im crine"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "130969734700048"
end)

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "c00lkidd without text"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "72607235888354"
end)

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "bypassed BYPASSED"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "84538995275805"
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Ruin lighting"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local ruinz = Instance.new("ColorCorrectionEffect")

	ruinz.Parent = game.Lighting
	ruinz.Saturation = 100
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "RUIN GAME (THIS MAY CRASH PEOPLES GAMES AND IT WELL BE LAGGY)"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do 
		wait(1)

		for i, v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("Sound") then
				v.PlaybackSpeed = math.random()
				v.Volume = math.random()
				v:Play()
			end
		end

		for i, e in pairs(game.Workspace:GetDescendants()) do
			if e:IsA("BasePart") then
				e.Transparency = 0
				e.Color = Color3.new(math.random(), math.random(), math.random())
				e.Orientation = Vector3.new(math.random(1,10000), math.random(1,10000), math.random(1,10000))
			end
		end

		for i, h in pairs(game.Players:GetDescendants()) do
			if h:IsA("Player") then
				h.Character.Humanoid.Health = math.random(1, 100)
				h.Character.Humanoid.WalkSpeed = math.random(1, 100)
				h.Character.Humanoid.JumpPower = math.random(1, 100)
				h.Character.Humanoid.JumpHeight = math.random(1, 100)
			end
		end

		for i, j in pairs(game.Teams:GetDescendants()) do
			if j:IsA("Team") then
				j.Name = "GAME FUCKED UP BY TEAM NIXON IDIOTS!!!!"
				j.TeamColor = BrickColor.new(math.random())
			end
		end

		for i, p in pairs(game.Workspace:GetDescendants()) do
			if p:IsA("Hint") or p:IsA("Message") then
				p.Text = "FUCK YOU LMAOOOOOO GAME RUINED BY TEAM NIXON LMAO"
			end
		end

		game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.Brightness = math.random()
		game.Lighting.ClockTime = math.random()
		game.Lighting.EnvironmentDiffuseScale = math.random()
		game.Lighting.EnvironmentSpecularScale = math.random()
		game.Lighting.ExposureCompensation = math.random()
		game.Lighting.FogColor = Color3.new(math.random(), math.random(), math.random())
		game.Lighting.GlobalShadows = math.random()
		game.Workspace.Gravity = math.random()
		game.Workspace.Name = "GAME FUCKED UP BY TEAM NIXON MATA FAKAS!!!!!!!"
		print("TEAM NIXON WAS HERE")
	end
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'skibbide'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "18841892596"
	pitche.Text = "1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'treasury'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "16190761193"
	pitche.Text = "1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'g00byd0lan'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "1847661783"
	pitche.Text = "1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = '1x1x1x1'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "139488665764275"
	pitche.Text = "1"
	volume.Text = "100"
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Ruin audios"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Sound") then
			while true do
				wait(0.9)
				v.PlaybackSpeed = math.random()
			end
		end
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Ruin gravity"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(1)
		game.Workspace.Gravity = math.random()
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Set gravity"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	game.Workspace.Gravity = tonumber(othervalue.Text)
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Health thing"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		player.Character.Humanoid.Health = math.random(1, 100)
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Set saturation"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Lighting:GetChildren()) do
		if v.Name == "nigga" then
			v:Destroy()
		end
	end
	wait(1)
	local ruinz = Instance.new("ColorCorrectionEffect")
	ruinz.Name = "nigga"
	ruinz.Parent = game.Lighting
	ruinz.Saturation = tonumber(othervalue.Text)
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Set color correction color thing"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Lighting:GetChildren()) do
		if v.Name == "nigga2" then
			v:Destroy()
		end
	end
	wait(1)
	local ruinz = Instance.new("ColorCorrectionEffect")
	ruinz.Name = "nigga2"
	ruinz.Parent = game.Lighting
	ruinz.TintColor = Color3.new(tonumber(Red.Text), tonumber(Green.Text), tonumber(Blue.Text))
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Set blur"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Lighting:GetChildren()) do
		if v.Name == "nigga3" then
			v:Destroy()
		end
	end
	wait(1)
	local ruinz = Instance.new("BlurEffect")
	ruinz.Name = "nigga3"
	ruinz.Parent = game.Lighting
	ruinz.Size = tonumber(othervalue.Text)
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Rain kill bricks"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do 
		wait(0.5)
		local part = Instance.new("Part")
		part.Parent = game.Workspace
		part.Anchored = false
		part.CanCollide = true
		part.Transparency = 0
		part.Color = Color3.new(1, 0, 0)
		part.Position = Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))	
		part.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") then
				hit.Parent:FindFirstChild("Humanoid").Health = 0
			end
		end)
	end

end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "CRASH SERVER"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local rekt = Instance.new("Message")
	rekt.Text = "GET FUCKING REKT BY EL NIXON! |SERVER WELL CRASH IN 10 SECS JOIN TEAM NIXON|"
	rekt.Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	rekt:Clone().Parent = game.Workspace rekt:Clone().Parent = game.Workspace
	wait(10)
	while true do end

end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "LAG SERVER (it takes a while to lag good beefy devices)"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		local lag = Instance.new("Part")
		lag.Parent = game.Workspace
		lag.Transparency = 0
		lag.Position = Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))
		lag.Anchored = false
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Mouse ruiner"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then
			local ruin = Instance.new("ScreenGui")
			ruin.Parent = v.PlayerGui
			local lel = Instance.new("ImageLabel")
			lel.Parent = ruin
			lel.Size = UDim2.new(0, 100, 0, 100)
			lel.Image = "rbxassetid://" .. decalidd.Text
			while true do
				wait(0)
				lel.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
				lel:Clone().Parent = ruin
			end
		end

	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Change mouse icon"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		mouse.Icon = "rbxassetid://" .. decalidd.Text
	end
end)


eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "New born"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local credits = Instance.new("Hint")
	credits.Parent  = game.Workspace
	credits.Text = "New born script by nixondoeslua"

	game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
	game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") then
			v:Destroy()
		end
	end

	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Color = Color3.new(0.407843, 0.321569, 0.262745)
		end
	end

	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v.Name == "Head" then
			local newbornface = Instance.new("Decal")
			newbornface.Parent = v
			newbornface.Texture = "http://www.roblox.com/asset/?id=1090118598"
			newbornface.Face = Enum.NormalId.Front
		end
	end 

	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v.Name == "HumanoidRootPart" then
			v.Touched:Connect(function(hit)
				hit.Parent:FindFirstChild("Humanoid").Health = 0
				local scream = Instance.new("Sound")
				scream.Parent = v
				scream.SoundId = "rbxassetid://113921626097667"
				scream:Play()
				local deathmessage = Instance.new("Hint")
				deathmessage.Parent = game.Workspace
				deathmessage.Text = "SlenderTubby new born player " .. player.Name .. " has killed " .. hit.Parent.Name .. "!"
				wait(3)
				deathmessage:Destroy()
			end)
		end
	end

end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "FF (force field)"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local ff = Instance.new("ForceField")
	ff.Parent = game.Workspace
	wait(1)
	ff.Parent = game.Players.LocalPlayer.Character["Torso"]
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Ghost"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Transparency = 0.5
		end
	end
end)


eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "If you get touched the player who touches you dies"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(player.Character:GetChildren()) do
		if v.Name == "HumanoidRootPart" then
			v.Touched:Connect(function(hit)
				if hit.Parent:FindFirstChild("Humanoid") then
					hit.Parent:FindFirstChild("Humanoid").Health = 0
				end
			end)
		end
	end 
end)


eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "emoji thing cowboy tuber93"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "95891149629895"
end)	

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "me at the xooj (xooj is said like ZOOJ so it sounds like zoo lel)"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "76767763164146"
end)	

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "swastika bypassed by team nixon"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "77451434730445"
end)	

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "moa zondong"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "132300540831928"
end)	

eee = Instance.new("TextButton")
eee.Parent = presentdecals
eee.BackgroundTransparency = 0
eee.Text = "illuminati"
eee.TextScaled = true
eee.TextColor3 = Color3.new(1, 1, 1)
eee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eee.BorderSizePixel = 4
eee.MouseButton1Click:Connect(function()
	decalidd.Text = "90258720639044"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'untrust us'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "123428853470425"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'AfterDark'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "104547422235809"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'Lay all your love on me'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "100133312952898"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'Gas Gas Gas'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "94560530342729"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'DAJA VU!'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "73600529926680"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

gggg = Instance.new("TextButton")
gggg.Parent = presentaudios
gggg.BackgroundTransparency = 0
gggg.Text = 'FALL FROM THE SKY'
gggg.Size = UDim2.new(0, 150,0, 150)
gggg.TextScaled = true
gggg.TextColor3 = Color3.new(1, 1, 1)
gggg.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
gggg.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
gggg.BorderSizePixel = 4
gggg.MouseButton1Click:Connect(function()
	audioid.Text = "92037532006968"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Reverb"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Sound") then
		local reverb = Instance.new("ReverbSoundEffect")
		reverb.Parent = v
	
	end
end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Distort"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Sound") then
			local reverb = Instance.new("DistortionSoundEffect")
			reverb.Parent = v

		end
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "CRAZY ARMS!!!!"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0)
		player.Character["Left Arm"].Orientation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		player.Character["Right Arm"].Orientation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
	end 
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = "Sit"
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	player.Character.Humanoid.Sit = true
end)


eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Tool spam'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then
			while true do 
				wait(1)
				local tool = Instance.new("Tool")
				tool.Parent = v.Backpack
				tool.ToolTip = "sorry not sorry! LOL"
				tool.Name = "" .. text.Text
			end
		end
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Tool spam 2'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetDescendants()) do
		if v:IsA("Player") then
			while true do 
				wait(1)
				local tool = Instance.new("Tool")
				tool.Parent = v.Backpack
				tool.ToolTip = "sorry not sorry! LOL"
				tool.TextureId = "rbxassetid://" .. decalidd.Text
			end
		end
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Typeing hint thing idfk'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
hint.Text = "E"
wait(0.5)
	hint.Text = "EL"
	wait(0.5)
	hint.Text = "EL "
	wait(0.5)
	hint.Text = "EL N"
	wait(0.5)
	hint.Text = "EL NI"
	wait(0.5)
	hint.Text = "EL NIX"
	wait(0.5)
	hint.Text = "EL NIXO"
	wait(0.5)
	hint.Text = "EL NIXON"
	wait(0.5)
	hint.Text = "EL NIXON "
	wait(0.5)
	hint.Text = "EL NIXON H"
	wait(0.5)
	hint.Text = "EL NIXON HA"
	wait(0.5)
	hint.Text = "EL NIXON HAC"
	wait(0.5)
	hint.Text = "EL NIXON HACK"
	wait(0.5)
	hint.Text = "EL NIXON HACKE"
	wait(0.5)
	hint.Text = "EL NIXON HACKED"
	wait(0.5)
	hint.Text = "EL NIXON HACKED "
	wait(0.5)
	hint.Text = "EL NIXON HACKED T"
	wait(0.5)
	hint.Text = "EL NIXON HACKED TI"
	wait(0.5)
	hint.Text = "EL NIXON HACKED TIS"
	wait(0.5)
	hint.Text = "EL NIXON HACKED TIS "
	wait(0.5)
	hint.Text = "EL NIXON HACKED TIS X"
	wait(0.5)
	hint.Text = "EL NIXON HACKED TIS XD"
	wait(0.5)
	hint.Text = "EL NIXON HACKED TIS XD."
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'NUKE'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Material = Enum.Material.CorrodedMetal
		v.Color = Color3.new(0, 0, 0)
		local nuke = Instance.new("Explosion")
		nuke.Parent = v
		nuke.Position = v.Position
		local fire = Instance.new("Fire")
		fire.Parent = v
		fire.Size = 100
	end
end
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Nixon Returns"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "73284740439093"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Team ZZisaskidd (mocking zziskidd)"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "116177585445421"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Xd jumpscare"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "135577831000560"
end)


g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Nixon Drawing 1"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "110042481808029"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Nixon Drawing 2"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "100029332975287"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "Better newer partical decal"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "72788675895595"
end)


g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "team l0rdmad"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "131670414250669"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "l0rdmad"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "105871017891433"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "team l0rdmad particals"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "92694850059466"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "l0rdmad jumpscare"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "117187829499074"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "l0rdmad face"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "106838955752820"
end)

g = Instance.new("TextButton")
g.Parent = presentdecals
g.BackgroundTransparency = 0
g.Text = "ANOTHER TEAM NIXON LOGO"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	decalidd.Text = "138409476095928"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "RockerFeller street (theme 5)"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "16831104459"
	pitche.Text = "1"
	volume.Text = "100"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "2006 (remix of it)"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "78834066924790"
	pitche.Text = "1"
	volume.Text = "100"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "Hazy moon jumpstyle"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "97893884327457"
	pitche.Text = "0.075"
	volume.Text = "100"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "lil darkie"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "81146935191871"
	pitche.Text = "0.1"
	volume.Text = "100"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "idk some tech song kinda reminds me of java "
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "1836785840"
	pitche.Text = "1"
	volume.Text = "100"
end)

g = Instance.new("TextButton")
g.Parent = presentaudios
g.BackgroundTransparency = 0
g.Text = "im so lucky lucky"
g.Size = UDim2.new(0, 150,0, 150)
g.TextScaled = true
g.TextColor3 = Color3.new(1, 1, 1)
g.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
g.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
g.BorderSizePixel = 4
g.MouseButton1Click:Connect(function()
	audioid.Text = "120785124326826"
	pitche.Text = "1"
	volume.Text = "100"
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Disco atmosphere'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
local heh = Instance.new("Atmosphere")
heh.Parent = game.Lighting
heh.Density = 0
heh.Offset = 0
heh.Glare = 10
heh.Haze = 10
while true do
	wait(0.3)
	heh.Color = Color3.new(math.random(), math.random(), math.random())
		heh.Decay = Color3.new(math.random(), math.random(), math.random())
end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Disco atmosphere 2'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local heh = Instance.new("Atmosphere")
	heh.Parent = game.Lighting
	heh.Density = 0.3
	heh.Offset = 0.3
	heh.Glare = 10
	heh.Haze = 10
	while true do
		wait(0.3)
		heh.Color = Color3.new(math.random(), math.random(), math.random())
		heh.Decay = Color3.new(math.random(), math.random(), math.random())
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Ball (Remake)'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.4)
		local ball = Instance.new("Part")
		local randomshape = math.random(1,3)
	if randomshape == 1 then ball.Shape = "Ball" end
	if randomshape == 2 then ball.Shape = "Block" end
	if randomshape == 3 then ball.Shape = "Cylinder" end
		ball.Parent = game.Workspace
		ball.Position = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
		ball.BrickColor = BrickColor.random()
		ball.Size = Vector3.new(math.random(100,500),math.random(100,500),math.random(100,500))
		ball.Anchored = false
	end
end)


eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Ball 2 (Remake)'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	while true do
		wait(0.4)
		local ball = Instance.new("Part")
		local randomshape = math.random(1,3)
		if randomshape == 1 then ball.Shape = "Ball" end
		if randomshape == 2 then ball.Shape = "Block" end
		if randomshape == 3 then ball.Shape = "Cylinder" end
		ball.Parent = game.Workspace
		ball.Position = Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))
		ball.BrickColor = BrickColor.random()
		ball.Size = Vector3.new(math.random(100,500),math.random(100,500),math.random(100,500))
		ball.Anchored = false
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Name tag all'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			local lel = Instance.new("Model")
			lel.Parent = game.Workspace
			lel.Name = "" .. text.Text
			local nametag = Instance.new("Humanoid")
			nametag.Parent = lel
			nametag.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
			v.Name = "Head"
			v.Parent = lel
		end
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Disco Mesh'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			task.spawn(function()
			while true do
				wait(0.5)
			
			local randommesh = math.random(8, 12)

												if randommesh == 8 then v.Shape = Enum.PartType.Ball end
												if randommesh == 9 then v.Shape = Enum.PartType.Block end
												 if randommesh == 10 then v.Shape = Enum.PartType.CornerWedge end
														if randommesh == 11 then v.Shape = Enum.PartType.Cylinder end
																		if randommesh == 12 then v.Shape = Enum.PartType.Wedge end
																		v.BrickColor = BrickColor.random()
			
			
			
			end
			end)
		end
	end
end)
																						
eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder2
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Pad (dont mind the decal i added)'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()	
	local pad = Instance.new("Part")
	pad.Parent = game.Workspace
	pad.Anchored = true
	
	local dreamybull = Instance.new("Decal", pad)
	dreamybull.Face = Enum.NormalId.Top
	dreamybull.Texture = "http://www.roblox.com/asset/?id=15533064331"
	
	while true do
		wait(0.5)
		pad.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
		pad.Size = Vector3.new(10, 0.1, 10)
		pad.BrickColor = BrickColor.random()
	end
end)															

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Spining skybox (suggested by steven3)'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local sky = Instance.new("Sky")
	local spin = 0
	sky.Parent = game.Lighting
	sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	while true do
		wait(0)
		spin = spin + 1
		sky.SkyboxOrientation = Vector3.new(0, spin, 0)
	end
end)


eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Spining skybox 2'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local sky = Instance.new("Sky")
	local spin = 0
	sky.Parent = game.Lighting
	sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	while true do
		wait(0)
		spin = spin + 1
		sky.SkyboxOrientation = Vector3.new(spin, 0, 0)
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Spining skybox 3'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local sky = Instance.new("Sky")
	local spin = 0
	sky.Parent = game.Lighting
	sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	while true do
		wait(0)
		spin = spin + 1
		sky.SkyboxOrientation = Vector3.new(0, 0, spin)
	end
end)

eeeeeeeeeeeeeeeeeeeeeeeeeee = Instance.new("TextButton")
eeeeeeeeeeeeeeeeeeeeeeeeeee.Parent = scriptholder
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundTransparency = 0
eeeeeeeeeeeeeeeeeeeeeeeeeee.Text = 'Trippy skybox'
eeeeeeeeeeeeeeeeeeeeeeeeeee.Size = UDim2.new(0, 150,0, 150)
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextScaled = true
eeeeeeeeeeeeeeeeeeeeeeeeeee.TextColor3 = Color3.new(1, 1, 1)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BackgroundColor3 = Color3.new(0, 0.0823529, 0.388235)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderColor3 = Color3.new(0, 0.388235, 0.0313725)
eeeeeeeeeeeeeeeeeeeeeeeeeee.BorderSizePixel = 4
eeeeeeeeeeeeeeeeeeeeeeeeeee.MouseButton1Click:Connect(function()
	local sky = Instance.new("Sky")
	local spin = 0
	local spin2 = 0
	local spin3 = 0
	sky.Parent = game.Lighting
	sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	while true do
		wait(0)
		spin = spin + 1
		spin2 = spin2 + 1
		spin3 = spin3 + 1
		sky.SkyboxOrientation = Vector3.new(spin, spin2, spin3)
	end
end)

local image1 = "http://www.roblox.com/asset/?id=95891149629895"
local image2 = "http://www.roblox.com/asset/?id=76767763164146"
local image3 = "http://www.roblox.com/asset/?id=77451434730445"
local image4 = "http://www.roblox.com/asset/?id=132300540831928"
local image5 = "http://www.roblox.com/asset/?id=90258720639044"

local randomimage = math.random(1,5)

local ring = Instance.new("ImageLabel")
ring.Parent = ng
if randomimage == 1 then ring.Image = image1 end
if randomimage == 2 then ring.Image = image2 end
if randomimage == 3 then ring.Image = image3 end
if randomimage == 4 then ring.Image = image4 end
if randomimage == 5 then ring.Image = image5 end
ring.Size = UDim2.new(0, 122,0, 122)
ring.Position = UDim2.new(0.829, 0,0.759, 0)
ring.BackgroundTransparency = 1


local fuck = Instance.new("TextButton")
fuck.Parent = ng
fuck.Text = "Close"
fuck.TextScaled = true
fuck.Position = UDim2.new(0, 0,0.905, 0)
fuck.Size = UDim2.new(0, 46,0, 50)
fuck.MouseButton1Click:Connect(function()
	if mainframe.Visible == true then
		mainframe.Visible = false
		fuck.Text = "Open"
	else
		mainframe.Visible = true
		fuck.Text = "Close"
	end
end)

if game.Players.LocalPlayer.Name == "x00jkidd" then
	Info("hi x00j afdgfsgd :D")
end

if game.Players.LocalPlayer.Name == "NixonDoesLua" or game.Players.LocalPlayer.Name == "Nix0nD0esLua" or game.Players.LocalPlayer.Name == "LuaC0W" or game.Players.LocalPlayer.Name == "bamababe2005" then
	Info("hi me aka rell bro haha hhhhh")
end

if game.Players.LocalPlayer.Name == "RobloxAlt12390" then
	Info("hi robloxalt hhhhhh :D")
end


while true do
	wait(0)
	ring.Rotation = ring.Rotation + 3
	decaldisplay.Image = "http://www.roblox.com/asset/?id=" .. decalidd.Text
	colordisplay.BackgroundColor3 = Color3.new(tonumber(Red.Text), tonumber(Green.Text), tonumber(Blue.Text))
end
