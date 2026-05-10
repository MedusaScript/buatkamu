-- ============================================================
-- QUANTUM ONYX PROJECT GUI
-- Design mirrored from screenshot
-- Compatible with: LocalScript inside StarterPlayerScripts
-- ============================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ============================================================
-- UTILITY FUNCTIONS
-- ============================================================

local function Create(class, props)
	local obj = Instance.new(class)
	for k, v in pairs(props) do
		if k ~= "Parent" then
			obj[k] = v
		end
	end
	if props.Parent then
		obj.Parent = props.Parent
	end
	return obj
end

local function MakeDraggable(frame, dragHandle)
	local dragging = false
	local dragInput, mousePos, framePos

	dragHandle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	dragHandle.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mousePos
			frame.Position = UDim2.new(
				framePos.X.Scale,
				framePos.X.Offset + delta.X,
				framePos.Y.Scale,
				framePos.Y.Offset + delta.Y
			)
		end
	end)
end

-- ============================================================
-- COLORS
-- ============================================================
local C = {
	BG          = Color3.fromRGB(18, 18, 24),
	BG2         = Color3.fromRGB(24, 24, 32),
	BG3         = Color3.fromRGB(30, 30, 40),
	Panel       = Color3.fromRGB(22, 22, 30),
	Border      = Color3.fromRGB(80, 50, 130),
	Purple      = Color3.fromRGB(138, 79, 255),
	PurpleLight = Color3.fromRGB(168, 110, 255),
	PurpleDark  = Color3.fromRGB(90, 40, 180),
	Green       = Color3.fromRGB(80, 220, 100),
	White       = Color3.fromRGB(230, 230, 240),
	Gray        = Color3.fromRGB(130, 130, 150),
	DarkGray    = Color3.fromRGB(50, 50, 65),
	Dropdown    = Color3.fromRGB(28, 22, 45),
	SliderBG    = Color3.fromRGB(60, 40, 100),
	ToggleOff   = Color3.fromRGB(70, 70, 85),
	ToggleOn    = Color3.fromRGB(120, 60, 200),
}

-- ============================================================
-- MAIN SCREEN GUI
-- ============================================================
local ScreenGui = Create("ScreenGui", {
	Name            = "QuantumOnyxGUI",
	ResetOnSpawn    = false,
	ZIndexBehavior  = Enum.ZIndexBehavior.Sibling,
	Parent          = playerGui,
})

-- ============================================================
-- MAIN FRAME (the big dark window)
-- ============================================================
local MainFrame = Create("Frame", {
	Name            = "MainFrame",
	Size            = UDim2.new(0, 1000, 0, 620),
	Position        = UDim2.new(0.5, -500, 0.5, -310),
	BackgroundColor3 = C.BG,
	BorderSizePixel = 0,
	Parent          = ScreenGui,
})
Create("UICorner", { CornerRadius = UDim.new(0, 12), Parent = MainFrame })
Create("UIStroke", { Color = C.Border, Thickness = 1.5, Parent = MainFrame })

-- ============================================================
-- TOP BAR
-- ============================================================
local TopBar = Create("Frame", {
	Name            = "TopBar",
	Size            = UDim2.new(1, 0, 0, 80),
	Position        = UDim2.new(0, 0, 0, 0),
	BackgroundColor3 = C.BG2,
	BorderSizePixel = 0,
	Parent          = MainFrame,
})
Create("UICorner", { CornerRadius = UDim.new(0, 12), Parent = TopBar })

-- Purple accent line under top bar
Create("Frame", {
	Size            = UDim2.new(1, 0, 0, 1),
	Position        = UDim2.new(0, 0, 1, -1),
	BackgroundColor3 = C.Border,
	BorderSizePixel = 0,
	Parent          = TopBar,
})

MakeDraggable(MainFrame, TopBar)

-- Title
Create("TextLabel", {
	Name            = "Title",
	Text            = "Quantum Onyx Project",
	Font            = Enum.Font.GothamBold,
	TextSize        = 20,
	TextColor3      = C.White,
	TextXAlignment  = Enum.TextXAlignment.Left,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 280, 0, 28),
	Position        = UDim2.new(0, 20, 0, 12),
	Parent          = TopBar,
})

-- Subtitle: "Blox Fruit · v.Freemium · Sunday"
local SubTitle = Create("TextLabel", {
	Name            = "SubTitle",
	Text            = "",
	Font            = Enum.Font.Gotham,
	TextSize        = 13,
	TextColor3      = C.Gray,
	TextXAlignment  = Enum.TextXAlignment.Left,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 340, 0, 18),
	Position        = UDim2.new(0, 20, 0, 42),
	Parent          = TopBar,
	RichText        = true,
})
SubTitle.Text = '<font color="rgb(180,180,200)">Blox Fruit</font><font color="rgb(100,100,120)"> · v.Freemium · </font><font color="rgb(80,220,100)">Sunday</font>'

-- Settings Button
local function MakeTopButton(text, posX, icon)
	local btn = Create("TextButton", {
		Text            = (icon and (icon .. "  ") or "") .. text,
		Font            = Enum.Font.GothamSemibold,
		TextSize        = 14,
		TextColor3      = C.White,
		BackgroundColor3 = C.BG3,
		Size            = UDim2.new(0, 130, 0, 38),
		Position        = UDim2.new(0, posX, 0, 20),
		BorderSizePixel = 0,
		Parent          = TopBar,
	})
	Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = btn })
	Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = btn })
	return btn
end

MakeTopButton("Settings", 580, "⚙")
MakeTopButton("Credits", 722, "👤")

-- Minimize & Close buttons
local MinBtn = Create("TextButton", {
	Text            = "⛶",
	Font            = Enum.Font.GothamBold,
	TextSize        = 18,
	TextColor3      = C.White,
	BackgroundColor3 = C.BG3,
	Size            = UDim2.new(0, 38, 0, 38),
	Position        = UDim2.new(0, 868, 0, 20),
	BorderSizePixel = 0,
	Parent          = TopBar,
})
Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = MinBtn })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = MinBtn })

local CloseBtn = Create("TextButton", {
	Text            = "✕",
	Font            = Enum.Font.GothamBold,
	TextSize        = 18,
	TextColor3      = C.White,
	BackgroundColor3 = C.BG3,
	Size            = UDim2.new(0, 38, 0, 38),
	Position        = UDim2.new(0, 918, 0, 20),
	BorderSizePixel = 0,
	Parent          = TopBar,
})
Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = CloseBtn })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = CloseBtn })

CloseBtn.MouseButton1Click:Connect(function()
	local tween = TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
		Size     = UDim2.new(0, 1000, 0, 0),
		Position = UDim2.new(0.5, -500, 0.5, 0),
	})
	tween:Play()
	tween.Completed:Connect(function()
		ScreenGui:Destroy()
	end)
end)

-- ============================================================
-- NAV BAR (Home / Sub Farm / Sea Event / Player / ...)
-- ============================================================
local NavBar = Create("Frame", {
	Name            = "NavBar",
	Size            = UDim2.new(1, 0, 0, 48),
	Position        = UDim2.new(0, 0, 0, 80),
	BackgroundColor3 = C.BG2,
	BorderSizePixel = 0,
	Parent          = MainFrame,
})

-- Bottom border line
Create("Frame", {
	Size            = UDim2.new(1, 0, 0, 1),
	Position        = UDim2.new(0, 0, 1, -1),
	BackgroundColor3 = C.Border,
	BorderSizePixel = 0,
	Parent          = NavBar,
})

-- Search bar
local SearchBox = Create("TextBox", {
	PlaceholderText = "🔍  Search...",
	Text            = "",
	Font            = Enum.Font.Gotham,
	TextSize        = 13,
	TextColor3      = C.White,
	PlaceholderColor3 = C.Gray,
	BackgroundColor3 = C.BG3,
	Size            = UDim2.new(0, 180, 0, 32),
	Position        = UDim2.new(0, 12, 0, 8),
	BorderSizePixel = 0,
	ClearTextOnFocus = false,
	TextXAlignment  = Enum.TextXAlignment.Left,
	Parent          = NavBar,
})
Create("UICorner", { CornerRadius = UDim.new(0, 20), Parent = SearchBox })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = SearchBox })
Create("UIPadding", {
	PaddingLeft = UDim.new(0, 12),
	Parent = SearchBox,
})

-- Nav tabs
local tabs = {
	{ icon = "🏠", label = "Home",      active = true  },
	{ icon = "⚔",  label = "Sub Farm",  active = false },
	{ icon = "🚢", label = "Sea Event", active = false },
	{ icon = "👤", label = "Player",    active = false },
	{ icon = "🔮", label = "Devil",     active = false },
}

local tabXStart = 210
for i, tab in ipairs(tabs) do
	local tabWidth = 110
	local btn = Create("TextButton", {
		Text            = tab.icon .. "  " .. tab.label,
		Font            = Enum.Font.GothamSemibold,
		TextSize        = 13,
		TextColor3      = tab.active and C.White or C.Gray,
		BackgroundTransparency = 1,
		Size            = UDim2.new(0, tabWidth, 0, 48),
		Position        = UDim2.new(0, tabXStart + (i-1)*tabWidth, 0, 0),
		BorderSizePixel = 0,
		Parent          = NavBar,
	})

	if tab.active then
		-- Active underline
		Create("Frame", {
			Size            = UDim2.new(0.7, 0, 0, 3),
			Position        = UDim2.new(0.15, 0, 1, -3),
			BackgroundColor3 = C.Purple,
			BorderSizePixel = 0,
			Parent          = btn,
		})
	end
end

-- ============================================================
-- CONTENT AREA
-- ============================================================
local ContentArea = Create("Frame", {
	Name            = "ContentArea",
	Size            = UDim2.new(1, 0, 1, -128),
	Position        = UDim2.new(0, 0, 0, 128),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Parent          = MainFrame,
})

-- ============================================================
-- HELPER: Section Panel Header (gradient bar + title)
-- ============================================================
local function MakeSectionHeader(parent, title, posY)
	local header = Create("Frame", {
		Size            = UDim2.new(1, -20, 0, 36),
		Position        = UDim2.new(0, 10, 0, posY),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent          = parent,
	})

	-- Left gradient pill
	local leftPill = Create("Frame", {
		Size            = UDim2.new(0, 80, 0, 8),
		Position        = UDim2.new(0, 0, 0.5, -4),
		BackgroundColor3 = C.Purple,
		BorderSizePixel = 0,
		Parent          = header,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = leftPill })
	Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, C.PurpleLight),
			ColorSequenceKeypoint.new(1, C.BG),
		}),
		Rotation = 0,
		Parent = leftPill,
	})

	-- Title
	Create("TextLabel", {
		Text            = title,
		Font            = Enum.Font.GothamBold,
		TextSize        = 16,
		TextColor3      = C.White,
		BackgroundTransparency = 1,
		Size            = UDim2.new(0, 200, 1, 0),
		Position        = UDim2.new(0.5, -100, 0, 0),
		TextXAlignment  = Enum.TextXAlignment.Center,
		Parent          = header,
	})

	-- Right gradient pill
	local rightPill = Create("Frame", {
		Size            = UDim2.new(0, 80, 0, 8),
		Position        = UDim2.new(1, -80, 0.5, -4),
		BackgroundColor3 = C.Purple,
		BorderSizePixel = 0,
		Parent          = header,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = rightPill })
	Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, C.BG),
			ColorSequenceKeypoint.new(1, C.PurpleLight),
		}),
		Rotation = 0,
		Parent = rightPill,
	})

	return header
end

-- ============================================================
-- HELPER: Row with label (left border)
-- ============================================================
local function MakeRow(parent, posY, height)
	height = height or 60
	local row = Create("Frame", {
		Size            = UDim2.new(1, -20, 0, height),
		Position        = UDim2.new(0, 10, 0, posY),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent          = parent,
	})

	-- Left purple border
	Create("Frame", {
		Size            = UDim2.new(0, 3, 0.7, 0),
		Position        = UDim2.new(0, 0, 0.15, 0),
		BackgroundColor3 = C.Purple,
		BorderSizePixel = 0,
		Parent          = row,
	})

	return row
end

-- ============================================================
-- HELPER: Dropdown button
-- ============================================================
local function MakeDropdown(parent, value, posX, posY, width)
	width = width or 120
	local btn = Create("TextButton", {
		Text            = value,
		Font            = Enum.Font.GothamSemibold,
		TextSize        = 13,
		TextColor3      = C.PurpleLight,
		BackgroundColor3 = C.Dropdown,
		Size            = UDim2.new(0, width, 0, 34),
		Position        = UDim2.new(0, posX, 0, posY),
		BorderSizePixel = 0,
		Parent          = parent,
	})
	Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = btn })
	Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = btn })

	-- Chevron
	Create("TextLabel", {
		Text            = "»",
		Font            = Enum.Font.GothamBold,
		TextSize        = 16,
		TextColor3      = C.PurpleLight,
		BackgroundTransparency = 1,
		Size            = UDim2.new(0, 24, 0, 34),
		Position        = UDim2.new(1, 2, 0, 0),
		Parent          = parent,
	})

	return btn
end

-- ============================================================
-- HELPER: Toggle
-- ============================================================
local function MakeToggle(parent, posX, posY, defaultOn)
	defaultOn = defaultOn or false

	local togFrame = Create("Frame", {
		Size            = UDim2.new(0, 54, 0, 28),
		Position        = UDim2.new(0, posX, 0, posY),
		BackgroundColor3 = defaultOn and C.ToggleOn or C.ToggleOff,
		BorderSizePixel = 0,
		Parent          = parent,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = togFrame })

	local knob = Create("Frame", {
		Size            = UDim2.new(0, 22, 0, 22),
		Position        = defaultOn
			and UDim2.new(0, 29, 0, 3)
			or  UDim2.new(0, 3, 0, 3),
		BackgroundColor3 = C.White,
		BorderSizePixel = 0,
		Parent          = togFrame,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = knob })

	local togButton = Create("TextButton", {
		Text            = "",
		BackgroundTransparency = 1,
		Size            = UDim2.new(1, 0, 1, 0),
		Parent          = togFrame,
	})

	local isOn = defaultOn
	togButton.MouseButton1Click:Connect(function()
		isOn = not isOn
		TweenService:Create(togFrame, TweenInfo.new(0.2), {
			BackgroundColor3 = isOn and C.ToggleOn or C.ToggleOff,
		}):Play()
		TweenService:Create(knob, TweenInfo.new(0.2), {
			Position = isOn and UDim2.new(0, 29, 0, 3) or UDim2.new(0, 3, 0, 3),
		}):Play()
	end)

	return togFrame
end

-- ============================================================
-- HELPER: Slider
-- ============================================================
local function MakeSlider(parent, posX, posY, width, value, minVal, maxVal)
	local sliderFrame = Create("Frame", {
		Size            = UDim2.new(0, width, 0, 16),
		Position        = UDim2.new(0, posX, 0, posY),
		BackgroundColor3 = C.SliderBG,
		BorderSizePixel = 0,
		Parent          = parent,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = sliderFrame })

	local fill = Create("Frame", {
		Size            = UDim2.new((value - minVal) / (maxVal - minVal), 0, 1, 0),
		BackgroundColor3 = C.Purple,
		BorderSizePixel = 0,
		Parent          = sliderFrame,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = fill })
	Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, C.PurpleLight),
			ColorSequenceKeypoint.new(1, C.Purple),
		}),
		Parent = fill,
	})

	local knob = Create("Frame", {
		Size            = UDim2.new(0, 20, 0, 20),
		Position        = UDim2.new((value - minVal) / (maxVal - minVal), -10, 0.5, -10),
		BackgroundColor3 = C.White,
		BorderSizePixel = 0,
		Parent          = sliderFrame,
	})
	Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = knob })
	Create("UIStroke", { Color = C.Purple, Thickness = 2, Parent = knob })

	return sliderFrame
end

-- ============================================================
-- LEFT PANEL: Main Farm
-- ============================================================
local LeftPanel = Create("Frame", {
	Name            = "LeftPanel",
	Size            = UDim2.new(0, 470, 1, -10),
	Position        = UDim2.new(0, 10, 0, 5),
	BackgroundColor3 = C.Panel,
	BorderSizePixel = 0,
	Parent          = ContentArea,
})
Create("UICorner", { CornerRadius = UDim.new(0, 10), Parent = LeftPanel })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = LeftPanel })

-- Section header: Main Farm
MakeSectionHeader(LeftPanel, "Main Farm", 8)

-- ---- Debug Functions row
local r1 = MakeRow(LeftPanel, 55, 65)
Create("TextLabel", {
	Text            = "Debug Functions",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.White,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 220, 0, 24),
	Position        = UDim2.new(0, 14, 0, 8),
	Parent          = r1,
})
Create("TextLabel", {
	Text            = "None",
	Font            = Enum.Font.Gotham,
	TextSize        = 13,
	TextColor3      = C.Gray,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 220, 0, 20),
	Position        = UDim2.new(0, 14, 0, 34),
	Parent          = r1,
})

-- Separator line inside panel
Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 124),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = LeftPanel,
})

-- ---- Weapon row
local r2 = MakeRow(LeftPanel, 132, 56)
Create("TextLabel", {
	Text            = "Weapon",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.White,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 160, 0, 56),
	Position        = UDim2.new(0, 14, 0, 0),
	TextYAlignment  = Enum.TextYAlignment.Center,
	Parent          = r2,
})
MakeDropdown(r2, "Melee", 200, 11, 130)

Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 190),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = LeftPanel,
})

-- ---- Farm Method row
local r3 = MakeRow(LeftPanel, 196, 56)
Create("TextLabel", {
	Text            = "Farm Method",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.White,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 160, 0, 56),
	Position        = UDim2.new(0, 14, 0, 0),
	TextYAlignment  = Enum.TextYAlignment.Center,
	Parent          = r3,
})
MakeDropdown(r3, "Quest", 200, 11, 130)

Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 254),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = LeftPanel,
})

-- ---- Nearest (Distance) row with slider
local r4 = MakeRow(LeftPanel, 260, 72)
Create("TextLabel", {
	Text            = "Nearest (Distance)",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.White,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 200, 0, 28),
	Position        = UDim2.new(0, 14, 0, 6),
	Parent          = r4,
})
-- Value box
local distBox = Create("TextBox", {
	Text            = "1500",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.White,
	BackgroundColor3 = C.Dropdown,
	Size            = UDim2.new(0, 80, 0, 28),
	Position        = UDim2.new(0, 310, 0, 6),
	BorderSizePixel = 0,
	TextXAlignment  = Enum.TextXAlignment.Center,
	Parent          = r4,
})
Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = distBox })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = distBox })
-- Slider
MakeSlider(r4, 14, 46, 415, 1500, 0, 5000)

Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 334),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = LeftPanel,
})

-- ---- Auto Farm toggle
local r5 = MakeRow(LeftPanel, 340, 54)
Create("TextLabel", {
	Text            = "Auto Farm",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.Gray,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 200, 0, 54),
	Position        = UDim2.new(0, 14, 0, 0),
	TextYAlignment  = Enum.TextYAlignment.Center,
	Parent          = r5,
})
MakeToggle(r5, 360, 13, false)

Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 396),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = LeftPanel,
})

-- ---- Take Quest toggle
local r6 = MakeRow(LeftPanel, 402, 54)
Create("TextLabel", {
	Text            = "Take Quest",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.Gray,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 200, 0, 54),
	Position        = UDim2.new(0, 14, 0, 0),
	TextYAlignment  = Enum.TextYAlignment.Center,
	Parent          = r6,
})
MakeToggle(r6, 360, 13, false)

-- ============================================================
-- RIGHT PANEL: Farm Settings
-- ============================================================
local RightPanel = Create("Frame", {
	Name            = "RightPanel",
	Size            = UDim2.new(0, 490, 1, -10),
	Position        = UDim2.new(0, 500, 0, 5),
	BackgroundColor3 = C.Panel,
	BorderSizePixel = 0,
	Parent          = ContentArea,
})
Create("UICorner", { CornerRadius = UDim.new(0, 10), Parent = RightPanel })
Create("UIStroke", { Color = C.Border, Thickness = 1, Parent = RightPanel })

-- Section header: Farm Settings
MakeSectionHeader(RightPanel, "Farm Settings", 8)

-- List of farm settings rows
local farmRows = {
	{ label = "Select Skills",    value = "Blox Fruit" },
	{ label = "Blox Fruit Skills", value = "Z" },
	{ label = "Melee Skills",     value = "Z" },
	{ label = "Sword Skills",     value = "Z" },
	{ label = "Gun Skills",       value = "Z" },
}

local rowStartY = 52
for i, info in ipairs(farmRows) do
	local yPos = rowStartY + (i-1) * 62

	local row = MakeRow(RightPanel, yPos, 56)
	Create("TextLabel", {
		Text            = info.label,
		Font            = Enum.Font.GothamBold,
		TextSize        = 14,
		TextColor3      = C.White,
		BackgroundTransparency = 1,
		Size            = UDim2.new(0, 200, 0, 56),
		Position        = UDim2.new(0, 14, 0, 0),
		TextYAlignment  = Enum.TextYAlignment.Center,
		Parent          = row,
	})

	local dropW = info.value == "Blox Fruit" and 140 or 120
	MakeDropdown(row, info.value, 230, 11, dropW)

	if i < #farmRows then
		Create("Frame", {
			Size            = UDim2.new(0.95, 0, 0, 1),
			Position        = UDim2.new(0.025, 0, 0, rowStartY + i*62 - 2),
			BackgroundColor3 = C.DarkGray,
			BorderSizePixel = 0,
			Parent          = RightPanel,
		})
	end
end

-- ---- Auto Use Skills toggle
Create("Frame", {
	Size            = UDim2.new(0.95, 0, 0, 1),
	Position        = UDim2.new(0.025, 0, 0, 364),
	BackgroundColor3 = C.DarkGray,
	BorderSizePixel = 0,
	Parent          = RightPanel,
})

local rSkills = MakeRow(RightPanel, 370, 54)
Create("TextLabel", {
	Text            = "Auto Use Skills",
	Font            = Enum.Font.GothamBold,
	TextSize        = 14,
	TextColor3      = C.Gray,
	BackgroundTransparency = 1,
	Size            = UDim2.new(0, 200, 0, 54),
	Position        = UDim2.new(0, 14, 0, 0),
	TextYAlignment  = Enum.TextYAlignment.Center,
	Parent          = rSkills,
})
MakeToggle(rSkills, 370, 13, false)

-- ============================================================
-- ENTRANCE ANIMATION
-- ============================================================
MainFrame.Size     = UDim2.new(0, 0, 0, 0)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
	Size     = UDim2.new(0, 1000, 0, 620),
	Position = UDim2.new(0.5, -500, 0.5, -310),
}):Play()

print("[Quantum Onyx] GUI Loaded!")
