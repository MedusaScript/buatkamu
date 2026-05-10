-- ╔══════════════════════════════════════════════════════════════╗
-- ║                    MEDUSA HUB v2.0                          ║
-- ║         Flat Dark · Responsive · Webhook Notifier           ║
-- ╚══════════════════════════════════════════════════════════════╝
-- LocalScript → StarterPlayerScripts

local Players      = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInput    = game:GetService("UserInputService")
local HttpService  = game:GetService("HttpService")

local player = Players.LocalPlayer
local pGui   = player:WaitForChild("PlayerGui")

-- ══════════════════════════════════════════════
--  WEBHOOK (isi URL kamu di sini)
-- ══════════════════════════════════════════════
local WEBHOOK_URL = "https://discord.com/api/webhooks/YOUR_WEBHOOK_HERE"

-- ══════════════════════════════════════════════
--  PALETTE  —  Flat Dark Purple
-- ══════════════════════════════════════════════
local C = {
    BG0   = Color3.fromRGB( 11,  9,  18),  -- background utama
    BG1   = Color3.fromRGB( 17, 14,  28),  -- header / sidebar
    BG2   = Color3.fromRGB( 22, 18,  36),  -- card
    BG3   = Color3.fromRGB( 30, 25,  48),  -- hover / input
    PUR   = Color3.fromRGB(120, 55, 210),  -- aksen utama
    PUR2  = Color3.fromRGB(155, 90, 255),  -- aksen terang
    PUR3  = Color3.fromRGB( 70, 28, 140),  -- aksen gelap
    LINE  = Color3.fromRGB( 44, 34,  70),  -- garis pemisah
    WHITE = Color3.fromRGB(220,215,235),
    GRAY  = Color3.fromRGB(105, 95,130),
    GREEN = Color3.fromRGB( 72,200,110),
    RED   = Color3.fromRGB(210, 65, 80),
}

-- ══════════════════════════════════════════════
--  HELPERS
-- ══════════════════════════════════════════════
local function New(cls, props)
    local o = Instance.new(cls)
    for k,v in pairs(props) do
        if k ~= "Parent" then o[k] = v end
    end
    if props.Parent then o.Parent = props.Parent end
    return o
end
local function Corner(r,p)  New("UICorner",{CornerRadius=UDim.new(0,r),Parent=p}) end
local function Stroke(c,t,p) New("UIStroke",{Color=c,Thickness=t,Parent=p}) end
local function Pad(l,r,t,b,p)
    New("UIPadding",{
        PaddingLeft=UDim.new(0,l),PaddingRight=UDim.new(0,r),
        PaddingTop=UDim.new(0,t),PaddingBottom=UDim.new(0,b),Parent=p
    })
end
local function Tw(o,d,props)
    TweenService:Create(o,TweenInfo.new(d,Enum.EasingStyle.Quart),props):Play()
end

-- Draggable (offset-based, aman untuk scale layout)
local function Draggable(frame, handle)
    local drag, mStart, fStart = false, nil, nil
    handle.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1
        or i.UserInputType == Enum.UserInputType.Touch then
            drag   = true
            mStart = i.Position
            fStart = frame.Position
            i.Changed:Connect(function()
                if i.UserInputState == Enum.UserInputState.End then drag = false end
            end)
        end
    end)
    UserInput.InputChanged:Connect(function(i)
        if not drag then return end
        if i.UserInputType == Enum.UserInputType.MouseMovement
        or i.UserInputType == Enum.UserInputType.Touch then
            local d = i.Position - mStart
            frame.Position = UDim2.new(
                fStart.X.Scale, fStart.X.Offset + d.X,
                fStart.Y.Scale, fStart.Y.Offset + d.Y
            )
        end
    end)
end

-- ══════════════════════════════════════════════
--  SEND WEBHOOK
-- ══════════════════════════════════════════════
local function SendWebhook(label, on)
    pcall(function()
        -- Placeholder: logika Job ID akan ditambahkan di sini
        -- local jobId = game.JobId
        HttpService:PostAsync(WEBHOOK_URL, HttpService:JSONEncode({
            username = "🐍 Medusa Hub",
            embeds = {{
                title       = label .. (on and "  ✅ ACTIVATED" or "  ❌ DEACTIVATED"),
                description = "**Player:** `"..player.Name.."`\n**Job ID:** `[akan ditambahkan]`",
                color       = on and 0x7B37D2 or 0x3D1A6E,
                footer      = { text = "Medusa Hub • "..os.date("%H:%M:%S") },
            }}
        }), Enum.HttpContentType.ApplicationJson, false)
    end)
end

-- ══════════════════════════════════════════════
--  SCREEN GUI
-- ══════════════════════════════════════════════
local SG = New("ScreenGui",{
    Name           = "MedusaHub",
    ResetOnSpawn   = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    IgnoreGuiInset = true,
    Parent         = pGui,
})

-- ══════════════════════════════════════════════
--  MAIN WINDOW  —  scale-based responsive
--  70% lebar layar, 75% tinggi layar, maks 600×540
-- ══════════════════════════════════════════════
local Win = New("Frame",{
    Name             = "Window",
    Size             = UDim2.new(0.70, 0, 0.75, 0),
    SizeConstraint   = Enum.SizeConstraint.RelativeXY,
    Position         = UDim2.new(0.15, 0, 0.125, 0),
    BackgroundColor3 = C.BG0,
    BorderSizePixel  = 0,
    ClipsDescendants = true,
    Parent           = SG,
})
Corner(12, Win)
Stroke(C.LINE, 1.5, Win)

-- ── TITLE BAR ────────────────────────────────
local TBar = New("Frame",{
    Size             = UDim2.new(1,0,0,0),
    -- tinggi title bar = 11% tinggi window
    SizeConstraint   = Enum.SizeConstraint.RelativeXY,
    BackgroundColor3 = C.BG1,
    BorderSizePixel  = 0,
    Parent           = Win,
})
-- Kita set tinggi title bar pakai AspectRatio trick → pakai offset tetap 48px
TBar.Size = UDim2.new(1,0,0,48)
-- bottom border
local tLine = New("Frame",{
    Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),
    BackgroundColor3=C.PUR3, BorderSizePixel=0, Parent=TBar,
})

Draggable(Win, TBar)

-- Icon + nama
New("TextLabel",{
    Text="🐍", TextSize=20, Font=Enum.Font.GothamBold,
    TextColor3=C.PUR2, BackgroundTransparency=1,
    Size=UDim2.new(0,28,1,0), Position=UDim2.new(0,12,0,0),
    TextYAlignment=Enum.TextYAlignment.Center,
    Parent=TBar,
})
New("TextLabel",{
    Text="MEDUSA HUB",
    Font=Enum.Font.GothamBold, TextSize=15,
    TextColor3=C.PUR2, BackgroundTransparency=1,
    Size=UDim2.new(0,150,0,26), Position=UDim2.new(0,44,0,11),
    TextXAlignment=Enum.TextXAlignment.Left,
    Parent=TBar,
})
New("TextLabel",{
    Text="webhook notifier",
    Font=Enum.Font.Gotham, TextSize=9,
    TextColor3=C.GRAY, BackgroundTransparency=1,
    Size=UDim2.new(0,120,0,12), Position=UDim2.new(0,44,0,30),
    TextXAlignment=Enum.TextXAlignment.Left,
    Parent=TBar,
})

-- Status badge
local SBadge = New("Frame",{
    Size=UDim2.new(0,72,0,20), Position=UDim2.new(0,200,0,14),
    BackgroundColor3=Color3.fromRGB(14,34,18), BorderSizePixel=0, Parent=TBar,
})
Corner(10,SBadge) Stroke(C.GREEN,1,SBadge)
New("TextLabel",{
    Text="● ACTIVE", Font=Enum.Font.GothamBold, TextSize=10,
    TextColor3=C.GREEN, BackgroundTransparency=1,
    Size=UDim2.new(1,0,1,0), TextXAlignment=Enum.TextXAlignment.Center,
    Parent=SBadge,
})

-- Window buttons (close / minimize)
local function WinBtn(txt, posXOffset, hCol)
    local b = New("TextButton",{
        Text=txt, Font=Enum.Font.GothamBold, TextSize=13,
        TextColor3=C.WHITE, BackgroundColor3=C.BG3,
        Size=UDim2.new(0,26,0,26),
        Position=UDim2.new(1,posXOffset,0,11),
        BorderSizePixel=0, Parent=TBar,
    })
    Corner(6,b)
    b.MouseEnter:Connect(function() Tw(b,.12,{BackgroundColor3=hCol}) end)
    b.MouseLeave:Connect(function() Tw(b,.12,{BackgroundColor3=C.BG3}) end)
    return b
end
local BClose = WinBtn("✕",-36, C.RED)
local BMin   = WinBtn("–",-66, C.PUR3)

local minimized = false
BMin.MouseButton1Click:Connect(function()
    minimized = not minimized
    Tw(Win,.25, minimized
        and {Size=UDim2.new(0.70,0,0,48)}
        or  {Size=UDim2.new(0.70,0,0.75,0)}
    )
end)
BClose.MouseButton1Click:Connect(function()
    Tw(Win,.25,{Size=UDim2.new(0.70,0,0,0),
                Position=UDim2.new(0.15,0,0.5,0)})
    task.delay(.3, function() SG:Destroy() end)
end)

-- ── TAB BAR ──────────────────────────────────
local TabBar = New("Frame",{
    Size=UDim2.new(1,-16,0,36),
    Position=UDim2.new(0,8,0,52),
    BackgroundColor3=C.BG1,
    BorderSizePixel=0, Parent=Win,
})
Corner(8,TabBar)
Stroke(C.LINE,1,TabBar)
New("UIListLayout",{
    FillDirection=Enum.FillDirection.Horizontal,
    SortOrder=Enum.SortOrder.LayoutOrder,
    VerticalAlignment=Enum.VerticalAlignment.Center,
    Padding=UDim.new(0,2), Parent=TabBar,
})
Pad(4,4,3,3,TabBar)

-- ── CONTENT AREA ─────────────────────────────
local Content = New("Frame",{
    Size=UDim2.new(1,-16,1,-140),
    Position=UDim2.new(0,8,0,94),
    BackgroundTransparency=1,
    BorderSizePixel=0, Parent=Win,
})

-- ── WEBHOOK BAR ──────────────────────────────
local WBar = New("Frame",{
    Size=UDim2.new(1,-16,0,32),
    Position=UDim2.new(0,8,1,-76),
    BackgroundColor3=C.BG1,
    BorderSizePixel=0, Parent=Win,
})
Corner(8,WBar) Stroke(C.LINE,1,WBar)
New("TextLabel",{
    Text="🔗", TextSize=13, Font=Enum.Font.GothamBold,
    TextColor3=C.PUR2, BackgroundTransparency=1,
    Size=UDim2.new(0,22,1,0), Position=UDim2.new(0,8,0,0),
    TextYAlignment=Enum.TextYAlignment.Center,
    Parent=WBar,
})
local WInput = New("TextBox",{
    Text="", PlaceholderText="Paste Discord Webhook URL…",
    Font=Enum.Font.Gotham, TextSize=11,
    TextColor3=C.WHITE, PlaceholderColor3=C.GRAY,
    BackgroundTransparency=1, ClearTextOnFocus=false,
    Size=UDim2.new(1,-90,1,0), Position=UDim2.new(0,34,0,0),
    TextXAlignment=Enum.TextXAlignment.Left,
    Parent=WBar,
})
WInput:GetPropertyChangedSignal("Text"):Connect(function()
    WEBHOOK_URL = WInput.Text
end)
local SaveBtn = New("TextButton",{
    Text="SAVE", Font=Enum.Font.GothamBold, TextSize=10,
    TextColor3=C.WHITE, BackgroundColor3=C.PUR3,
    Size=UDim2.new(0,46,0,22),
    Position=UDim2.new(1,-52,0.5,-11),
    BorderSizePixel=0, Parent=WBar,
})
Corner(6,SaveBtn)
SaveBtn.MouseButton1Click:Connect(function()
    SaveBtn.Text="✓" SaveBtn.BackgroundColor3=C.GREEN
    task.delay(1.5,function()
        SaveBtn.Text="SAVE"
        Tw(SaveBtn,.3,{BackgroundColor3=C.PUR3})
    end)
end)

-- footer
New("TextLabel",{
    Text="v2.0  ·  Medusa Hub  ·  logika Job ID akan ditambahkan",
    Font=Enum.Font.Gotham, TextSize=9,
    TextColor3=C.GRAY, BackgroundTransparency=1,
    Size=UDim2.new(1,-16,0,20),
    Position=UDim2.new(0,8,1,-38),
    TextXAlignment=Enum.TextXAlignment.Center,
    Parent=Win,
})
New("Frame",{
    Size=UDim2.new(1,-16,0,1), Position=UDim2.new(0,8,1,-42),
    BackgroundColor3=C.LINE, BorderSizePixel=0, Parent=Win,
})

-- ══════════════════════════════════════════════
--  TAB DATA
-- ══════════════════════════════════════════════
local TABS = {
    {
        id="bloxfruits", label="Blox Fruits", icon="🍎",
        items={
            {id="fullmoon",    label="Full Moon",         desc="Notif saat event Full Moon aktif"},
            {id="mirage",      label="Mirage Island",     desc="Notif saat Mirage Island muncul"},
            {id="prehistoric", label="Prehistoric Island",desc="Notif saat Prehistoric Island spawn"},
            {id="legsword",    label="Legendary Sword",   desc="Notif saat Legendary Sword spawn"},
            {id="leghaki",     label="Legendary Haki",    desc="Notif saat Legendary Haki tersedia"},
        }
    },
    {
        id="kinglegacy", label="King Legacy", icon="👑",
        items={
            {id="bossSpawn",  label="Boss Spawned",   desc="Notif ketika Boss muncul di map"},
            {id="raidStart",  label="Raid Started",   desc="Notif ketika Raid dimulai"},
            {id="chestSpawn", label="Chest Spawned",  desc="Notif ketika Rare Chest muncul"},
        }
    },
    {
        id="fisch", label="Fisch", icon="🎣",
        items={
            {id="fischEvt",   label="Event Tracker",  desc="Pantau event aktif di Fisch"},
            {id="rareFish",   label="Rare Fish Alert", desc="Notif saat ikan langka muncul"},
            {id="storm",      label="Storm Warning",   desc="Notif ketika badai mendekat"},
        }
    },
    {
        id="settings", label="Settings", icon="⚙",
        items={
            {id="pingJoin",  label="Ping on Join",  desc="Kirim webhook saat masuk server"},
            {id="pingDeath", label="Ping on Death", desc="Kirim webhook saat karakter mati"},
            {id="silent",    label="Silent Mode",   desc="Matikan semua notifikasi webhook"},
        }
    },
}

-- ══════════════════════════════════════════════
--  TOGGLE SYSTEM  (mutual exclusive)
-- ══════════════════════════════════════════════
local activeSetFn = nil  -- referensi ke setFn yang sedang ON

local function MakeToggleRow(parent, item)
    local row = New("Frame",{
        Size=UDim2.new(1,0,0,52),
        BackgroundColor3=C.BG2,
        BorderSizePixel=0,
        LayoutOrder=1, Parent=parent,
    })
    Corner(8,row)
    Stroke(C.LINE,1,row)

    -- left bar
    local bar = New("Frame",{
        Size=UDim2.new(0,3,0.55,0),
        Position=UDim2.new(0,0,0.225,0),
        BackgroundColor3=C.PUR3,
        BorderSizePixel=0, Parent=row,
    })
    Corner(2,bar)

    -- label
    New("TextLabel",{
        Text=item.label, Font=Enum.Font.GothamBold, TextSize=13,
        TextColor3=C.WHITE, BackgroundTransparency=1,
        Size=UDim2.new(0.58,0,0,22),
        Position=UDim2.new(0,12,0,8),
        TextXAlignment=Enum.TextXAlignment.Left,
        Parent=row,
    })
    New("TextLabel",{
        Text=item.desc, Font=Enum.Font.Gotham, TextSize=10,
        TextColor3=C.GRAY, BackgroundTransparency=1,
        Size=UDim2.new(0.58,0,0,16),
        Position=UDim2.new(0,12,0,30),
        TextXAlignment=Enum.TextXAlignment.Left,
        Parent=row,
    })

    -- status chip
    local chip = New("Frame",{
        Size=UDim2.new(0,52,0,20),
        Position=UDim2.new(1,-116,0.5,-10),
        BackgroundColor3=C.BG3,
        BorderSizePixel=0, Parent=row,
    })
    Corner(10,chip)
    local chipTxt = New("TextLabel",{
        Text="OFF", Font=Enum.Font.GothamBold, TextSize=10,
        TextColor3=C.GRAY, BackgroundTransparency=1,
        Size=UDim2.new(1,0,1,0),
        TextXAlignment=Enum.TextXAlignment.Center,
        Parent=chip,
    })

    -- toggle pill
    local pill = New("Frame",{
        Size=UDim2.new(0,50,0,26),
        Position=UDim2.new(1,-60,0.5,-13),
        BackgroundColor3=C.BG3,
        BorderSizePixel=0, Parent=row,
    })
    Corner(13,pill) Stroke(C.LINE,1,pill)
    local knob = New("Frame",{
        Size=UDim2.new(0,20,0,20),
        Position=UDim2.new(0,3,0,3),
        BackgroundColor3=C.GRAY,
        BorderSizePixel=0, Parent=pill,
    })
    Corner(10,knob)

    local isOn = false

    local function setFn(on, silent)
        isOn = on
        if on then
            Tw(pill,  .22, {BackgroundColor3=C.PUR})
            Tw(knob,  .22, {Position=UDim2.new(0,27,0,3), BackgroundColor3=C.PUR2})
            Tw(bar,   .22, {BackgroundColor3=C.PUR2})
            Tw(row,   .22, {BackgroundColor3=Color3.fromRGB(25,16,44)})
            chipTxt.Text       = "ON"
            chipTxt.TextColor3 = C.PUR2
            chip.BackgroundColor3 = Color3.fromRGB(36,18,64)
            if not silent then task.spawn(SendWebhook, item.label, true) end
        else
            Tw(pill,  .22, {BackgroundColor3=C.BG3})
            Tw(knob,  .22, {Position=UDim2.new(0,3,0,3), BackgroundColor3=C.GRAY})
            Tw(bar,   .22, {BackgroundColor3=C.PUR3})
            Tw(row,   .22, {BackgroundColor3=C.BG2})
            chipTxt.Text       = "OFF"
            chipTxt.TextColor3 = C.GRAY
            chip.BackgroundColor3 = C.BG3
            if not silent then task.spawn(SendWebhook, item.label, false) end
        end
    end

    -- clickable overlay
    local btn = New("TextButton",{
        Text="", BackgroundTransparency=1,
        Size=UDim2.new(1,0,1,0), Parent=row,
    })
    btn.MouseButton1Click:Connect(function()
        if isOn then
            setFn(false)
            activeSetFn = nil
        else
            -- matikan yang sebelumnya aktif
            if activeSetFn and activeSetFn ~= setFn then
                activeSetFn(false)
            end
            setFn(true)
            activeSetFn = setFn
        end
    end)
    btn.MouseEnter:Connect(function()
        if not isOn then Tw(row,.12,{BackgroundColor3=C.BG3}) end
    end)
    btn.MouseLeave:Connect(function()
        if not isOn then Tw(row,.12,{BackgroundColor3=C.BG2}) end
    end)
end

-- ══════════════════════════════════════════════
--  BUILD TABS
-- ══════════════════════════════════════════════
local pages    = {}
local tabBtns  = {}
local curTab   = nil

local function switchTab(id)
    if curTab == id then return end
    curTab = id
    for tid, pg  in pairs(pages)   do pg.Visible  = (tid==id) end
    for tid, tb  in pairs(tabBtns) do
        local a = (tid==id)
        Tw(tb.bg,.18, {BackgroundColor3 = a and C.PUR3 or C.BG0,
                       BackgroundTransparency = a and 0 or 1})
        tb.lbl.TextColor3 = a and C.WHITE or C.GRAY
        tb.lbl.Font = a and Enum.Font.GothamBold or Enum.Font.Gotham
    end
end

for _, tab in ipairs(TABS) do
    -- tab button
    local tbFrame = New("Frame",{
        Size=UDim2.new(0,0,1,0), AutomaticSize=Enum.AutomaticSize.X,
        BackgroundTransparency=1, BorderSizePixel=0,
        LayoutOrder=1, Parent=TabBar,
    })
    local tbBg = New("Frame",{
        Size=UDim2.new(1,0,1,0), BackgroundColor3=C.BG0,
        BackgroundTransparency=1, BorderSizePixel=0, Parent=tbFrame,
    })
    Corner(6,tbBg)
    local tbLbl = New("TextLabel",{
        Text=tab.icon.."  "..tab.label,
        Font=Enum.Font.Gotham, TextSize=12,
        TextColor3=C.GRAY, BackgroundTransparency=1,
        Size=UDim2.new(0,0,1,0), AutomaticSize=Enum.AutomaticSize.X,
        TextXAlignment=Enum.TextXAlignment.Center, Parent=tbFrame,
    })
    Pad(10,10,0,0,tbLbl)
    local tbBtn = New("TextButton",{
        Text="", BackgroundTransparency=1,
        Size=UDim2.new(1,0,1,0), Parent=tbFrame,
    })
    tabBtns[tab.id] = {bg=tbBg, lbl=tbLbl}
    tbBtn.MouseButton1Click:Connect(function() switchTab(tab.id) end)

    -- scroll page
    local page = New("ScrollingFrame",{
        Size=UDim2.new(1,0,1,0),
        BackgroundTransparency=1, BorderSizePixel=0,
        ScrollBarThickness=3, ScrollBarImageColor3=C.PUR3,
        CanvasSize=UDim2.new(0,0,0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,
        Visible=false, Parent=Content,
    })
    New("UIListLayout",{
        SortOrder=Enum.SortOrder.LayoutOrder,
        Padding=UDim.new(0,6), Parent=page,
    })
    Pad(0,6,2,4,page)
    pages[tab.id] = page

    -- section header
    local secHdr = New("Frame",{
        Size=UDim2.new(1,-6,0,24),
        BackgroundTransparency=1, BorderSizePixel=0,
        LayoutOrder=0, Parent=page,
    })
    New("TextLabel",{
        Text=tab.label:upper().." — EVENTS",
        Font=Enum.Font.GothamBold, TextSize=9,
        TextColor3=C.PUR2, BackgroundTransparency=1,
        Size=UDim2.new(0,0,1,0), AutomaticSize=Enum.AutomaticSize.X,
        TextXAlignment=Enum.TextXAlignment.Left,
        Parent=secHdr,
    })
    -- line
    local sl = New("Frame",{
        Size=UDim2.new(1,0,0,1), Position=UDim2.new(0,0,1,-1),
        BackgroundColor3=C.LINE, BorderSizePixel=0, Parent=secHdr,
    })

    for _, item in ipairs(tab.items) do
        MakeToggleRow(page, item)
    end
end

-- aktifkan tab pertama
switchTab(TABS[1].id)

-- ══════════════════════════════════════════════
--  ENTRANCE ANIMATION
-- ══════════════════════════════════════════════
Win.Size               = UDim2.new(0.70,0,0,0)
Win.Position           = UDim2.new(0.15,0,0.5,0)
Win.BackgroundTransparency = 1

TweenService:Create(Win, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
    Size                   = UDim2.new(0.70,0,0.75,0),
    Position               = UDim2.new(0.15,0,0.125,0),
    BackgroundTransparency = 0,
}):Play()

print("🐍 Medusa Hub v2.0 loaded — "..player.Name)
