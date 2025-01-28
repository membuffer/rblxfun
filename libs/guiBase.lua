-- ASSETS
local memAssets = {
    ["logo"] = {
        resourceURL = "https://github.com/membuffer/rblxfun/blob/main/libs/menu_logo.png?raw=true",
        filename = "logo.png"
    }
}
if not isfolder("membuffer") then
    makefolder("membuffer")
end
if not isfolder("membuffer/assets") then
    makefolder("membuffer/assets")
end
function fetchData(resourceName)
    if not isfile("membuffer/assets/" .. memAssets[resourceName].filename) then
        writefile("membuffer/assets/" .. memAssets[resourceName].filename, game:HttpGet(memAssets[resourceName].resourceURL))
    end
    return getcustomasset("membuffer/assets/" .. memAssets[resourceName].filename)
end


local Rayfield = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Shadow = Instance.new("Frame")
local Image = Instance.new("ImageLabel")
local Topbar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local CornerRepair = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Hide = Instance.new("ImageButton")
local Divider = Instance.new("Frame")
local ChangeSize = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local Icon = Instance.new("ImageButton")
local Search = Instance.new("ImageButton")
local Elements = Instance.new("Frame")
local Template = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local SectionTitle = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Toggle = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Title_3 = Instance.new("TextLabel")
local Interact = Instance.new("TextButton")
local Switch = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Shadow_2 = Instance.new("ImageLabel")
local UICorner_5 = Instance.new("UICorner")
local Indicator = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local SectionSpacing = Instance.new("Frame")
local Slider = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Title_5 = Instance.new("TextLabel")
local InputFrame = Instance.new("Frame")
local InputBox = Instance.new("TextBox")
local UICorner_9 = Instance.new("UICorner")
local Keybind = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local Title_6 = Instance.new("TextLabel")
local KeybindFrame = Instance.new("Frame")
local KeybindBox = Instance.new("TextBox")
local UICorner_11 = Instance.new("UICorner")
local Dropdown = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Title_7 = Instance.new("TextLabel")
local List = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Placeholder = Instance.new("Frame")
local Template_2 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local Title_8 = Instance.new("TextLabel")
local Interact_2 = Instance.new("TextButton")
local Selected = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Toggle_2 = Instance.new("ImageButton")
local Interact_3 = Instance.new("TextButton")
local Label = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local Title_9 = Instance.new("TextLabel")
local Icon_2 = Instance.new("ImageLabel")
local Paragraph = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local Title_10 = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Buffer = Instance.new("Frame")
local Buffer_2 = Instance.new("Frame")
local Placeholder_2 = Instance.new("Frame")
local ColorPicker = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local Interact_4 = Instance.new("TextButton")
local CPBackground = Instance.new("Frame")
local MainCP = Instance.new("ImageButton")
local UICorner_17 = Instance.new("UICorner")
local MainPoint = Instance.new("ImageButton")
local UICorner_18 = Instance.new("UICorner")
local Display = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local HexInput = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local InputBox_2 = Instance.new("TextBox")
local ColorSlider = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local SliderPoint = Instance.new("ImageButton")
local TintAdder = Instance.new("TextLabel")
local UICorner_22 = Instance.new("UICorner")
local UICorner_23 = Instance.new("UICorner")
local Title_11 = Instance.new("TextLabel")
local RGB = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local GInput = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local InputBox_3 = Instance.new("TextBox")
local RInput = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local InputBox_4 = Instance.new("TextBox")
local BInput = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local InputBox_5 = Instance.new("TextBox")
local Divider_2 = Instance.new("Frame")
local Divider_3 = Instance.new("Frame")
local UICorner_27 = Instance.new("UICorner")
local Button = Instance.new("Frame")
local UICorner_28 = Instance.new("UICorner")
local Title_12 = Instance.new("TextLabel")
local ElementIndicator = Instance.new("TextLabel")
local Interact_5 = Instance.new("TextButton")
local Image_2 = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UIPageLayout = Instance.new("UIPageLayout")
local LoadingFrame = Instance.new("Frame")
-- local Title_13 = Instance.new("TextLabel")
local Subtitle = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local TabList = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local Placeholder_3 = Instance.new("Frame")
local Template_3 = Instance.new("Frame")
local UICorner_30 = Instance.new("UICorner")
local Title_14 = Instance.new("TextLabel")
local Interact_6 = Instance.new("TextButton")
local Image_3 = Instance.new("ImageLabel")
local Preview = Instance.new("Frame")
local UICorner_31 = Instance.new("UICorner")
local Shadow_3 = Instance.new("Frame")
local Image_4 = Instance.new("ImageLabel")
local Description = Instance.new("TextLabel")
local Title_15 = Instance.new("TextLabel")
local State = Instance.new("TextLabel")
local PreviewImage = Instance.new("ImageLabel")
local Search_2 = Instance.new("Frame")
local UICorner_32 = Instance.new("UICorner")
local Search_3 = Instance.new("ImageLabel")
local Input_2 = Instance.new("TextBox")
local Shadow_4 = Instance.new("ImageLabel")
local Notice = Instance.new("Frame")
local UICorner_33 = Instance.new("UICorner")
local Title_16 = Instance.new("TextLabel")
local Notice_2 = Instance.new("Frame")
local UICorner_34 = Instance.new("UICorner")
local Title_17 = Instance.new("TextLabel")
local List_2 = Instance.new("Frame")
local _2 = Instance.new("Frame")
local Title_18 = Instance.new("TextLabel")
local Content_2 = Instance.new("TextLabel")
local UIListLayout_6 = Instance.new("UIListLayout")
local _1 = Instance.new("Frame")
local Title_19 = Instance.new("TextLabel")
local Content_3 = Instance.new("TextLabel")
local _3 = Instance.new("Frame")
local Title_20 = Instance.new("TextLabel")
local Content_4 = Instance.new("TextLabel")
local Interact_7 = Instance.new("TextButton")
local UICorner_35 = Instance.new("UICorner")
local Prompt = Instance.new("Frame")
local UICorner_36 = Instance.new("UICorner")
local Title_21 = Instance.new("TextLabel")
local Interact_8 = Instance.new("TextButton")
local Notifications = Instance.new("Frame")
local Template_4 = Instance.new("Frame")
local UICorner_37 = Instance.new("UICorner")
local Icon_3 = Instance.new("ImageLabel")
local Interact_9 = Instance.new("TextButton")
local Description_2 = Instance.new("TextLabel")
local Title_22 = Instance.new("TextLabel")
local Shadow_5 = Instance.new("ImageLabel")
local BlurFrame = Instance.new("Frame")
local UIListLayout_7 = Instance.new("UIListLayout")
local Drag = Instance.new("Frame")
local UICorner_38 = Instance.new("UICorner")
local Drag_2 = Instance.new("Frame")
local UICorner_39 = Instance.new("UICorner")
local Interact_10 = Instance.new("TextButton")
local Loading = Instance.new("Frame")
-- local Title_23 = Instance.new("TextLabel")
local Logo = Instance.new("ImageLabel")
local UIListLayout_8 = Instance.new("UIListLayout")

--Properties:

Rayfield.Name = "Rayfield"
Rayfield.Parent = game:GetService("CoreGui")
Rayfield.DisplayOrder = 100
Rayfield.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = Rayfield
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 500, 0, 475)
Main.Visible = false

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Main

Shadow.Name = "Shadow"
Shadow.Parent = Main
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(1, 35, 1, 35)
Shadow.ZIndex = 0

Image.Name = "Image"
Image.Parent = Shadow
Image.AnchorPoint = Vector2.new(0.5, 0.5)
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.BackgroundTransparency = 1.000
Image.BorderColor3 = Color3.fromRGB(27, 42, 53)
Image.BorderSizePixel = 0
Image.Position = UDim2.new(0.5, 0, 0.5, 0)
Image.Size = UDim2.new(1.60000002, 0, 1.29999995, 0)
Image.ZIndex = 0
Image.Image = "rbxassetid://5587865193"
Image.ImageColor3 = Color3.fromRGB(20, 20, 20)
Image.ImageTransparency = 0.600

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Topbar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(1, 0, 0, 45)
Topbar.ZIndex = 5

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Topbar

CornerRepair.Name = "CornerRepair"
CornerRepair.Parent = Topbar
CornerRepair.AnchorPoint = Vector2.new(0.5, 0.5)
CornerRepair.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
CornerRepair.BorderColor3 = Color3.fromRGB(27, 42, 53)
CornerRepair.BorderSizePixel = 0
CornerRepair.Position = UDim2.new(0.5, 0, 0.838888884, 0)
CornerRepair.Size = UDim2.new(1, 0, 0.322222233, 0)
CornerRepair.ZIndex = 4

Title.Name = "Title"
Title.Parent = Topbar
Title.AnchorPoint = Vector2.new(0, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 17, 0.5, 0)
Title.Size = UDim2.new(0, 338, 0, 16)
Title.ZIndex = 5
Title.Font = Enum.Font.Unknown
Title.Text = "Rayfield Interface Suite"
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Hide.Name = "Hide"
Hide.Parent = Topbar
Hide.AnchorPoint = Vector2.new(1, 0.5)
Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hide.BackgroundTransparency = 1.000
Hide.BorderColor3 = Color3.fromRGB(27, 42, 53)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(1, -15, 0.5, 0)
Hide.Size = UDim2.new(0, 24, 0, 24)
Hide.ZIndex = 5
Hide.Image = "http://www.roblox.com/asset/?id=10137832201"
Hide.ImageColor3 = Color3.fromRGB(240, 240, 240)
Hide.ImageTransparency = 0.800
Hide.ScaleType = Enum.ScaleType.Fit

Divider.Name = "Divider"
Divider.Parent = Topbar
Divider.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Divider.BorderColor3 = Color3.fromRGB(27, 42, 53)
Divider.BorderSizePixel = 0
Divider.Position = UDim2.new(0, 0, 1, 0)
Divider.Size = UDim2.new(1, 0, 0, 1)

ChangeSize.Name = "ChangeSize"
ChangeSize.Parent = Topbar
ChangeSize.AnchorPoint = Vector2.new(1, 0.5)
ChangeSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChangeSize.BackgroundTransparency = 1.000
ChangeSize.BorderColor3 = Color3.fromRGB(27, 42, 53)
ChangeSize.BorderSizePixel = 0
ChangeSize.Position = UDim2.new(1, -45, 0.5, 0)
ChangeSize.Size = UDim2.new(0, 24, 0, 24)
ChangeSize.ZIndex = 5
ChangeSize.Image = "rbxassetid://10137941941"
ChangeSize.ImageColor3 = Color3.fromRGB(240, 240, 240)
ChangeSize.ImageTransparency = 0.800
ChangeSize.ScaleType = Enum.ScaleType.Fit

Settings.Name = "Settings"
Settings.Parent = Topbar
Settings.AnchorPoint = Vector2.new(1, 0.5)
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderColor3 = Color3.fromRGB(27, 42, 53)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(1, -75, 0.5, 0)
Settings.Size = UDim2.new(0, 24, 0, 24)
Settings.ZIndex = 5
Settings.Image = "rbxassetid://80503127983237"
Settings.ImageColor3 = Color3.fromRGB(240, 240, 240)
Settings.ImageTransparency = 0.800
Settings.ScaleType = Enum.ScaleType.Fit

Icon.Name = "Icon"
Icon.Parent = Topbar
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0, 17, 0.5, 0)
Icon.Size = UDim2.new(0, 24, 0, 24)
Icon.Visible = false
Icon.ZIndex = 5
Icon.Image = "rbxassetid://78137979054938"
Icon.ImageColor3 = Color3.fromRGB(240, 240, 240)
Icon.ScaleType = Enum.ScaleType.Fit

Search.Name = "Search"
Search.Parent = Topbar
Search.AnchorPoint = Vector2.new(1, 0.5)
Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Search.BackgroundTransparency = 1.000
Search.BorderColor3 = Color3.fromRGB(27, 42, 53)
Search.BorderSizePixel = 0
Search.Position = UDim2.new(1, -105, 0.5, 0)
Search.Size = UDim2.new(0, 24, 0, 24)
Search.ZIndex = 5
Search.Image = "rbxassetid://8445471332"
Search.ImageColor3 = Color3.fromRGB(240, 240, 240)
Search.ImageRectOffset = Vector2.new(204, 104)
Search.ImageRectSize = Vector2.new(96, 96)
Search.ImageTransparency = 0.800
Search.ScaleType = Enum.ScaleType.Fit

Elements.Name = "Elements"
Elements.Parent = Main
Elements.AnchorPoint = Vector2.new(0.5, 1)
Elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Elements.BackgroundTransparency = 1.000
Elements.BorderColor3 = Color3.fromRGB(27, 42, 53)
Elements.BorderSizePixel = 0
Elements.ClipsDescendants = true
Elements.Position = UDim2.new(0.5, 0, 1, 0)
Elements.Size = UDim2.new(1, 0, 1, -100)

Template.Name = "Template"
Template.Parent = Elements
Template.Active = true
Template.AnchorPoint = Vector2.new(0.5, 0.5)
Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Template.BackgroundTransparency = 1.000
Template.BorderColor3 = Color3.fromRGB(27, 42, 53)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0.5, 0, 0.5, 0)
Template.Size = UDim2.new(1, -25, 1, 0)
Template.CanvasSize = UDim2.new(0, 0, 0, 0)
Template.ScrollBarThickness = 0

UIListLayout.Parent = Template
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

SectionTitle.Name = "SectionTitle"
SectionTitle.Parent = Template
SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionTitle.BackgroundTransparency = 1.000
SectionTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
SectionTitle.BorderSizePixel = 0
SectionTitle.Size = UDim2.new(1, 0, 0, 15)

Title_2.Name = "Title"
Title_2.Parent = SectionTitle
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0, 10, 0.100000001, 0)
Title_2.Size = UDim2.new(0.874736845, 0, 0, 13)
Title_2.Font = Enum.Font.GothamMedium
Title_2.Text = "Aimbot"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextTransparency = 0.400
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Toggle.Name = "Toggle"
Toggle.Parent = Template
Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Toggle.BorderSizePixel = 0
Toggle.Size = UDim2.new(1, -10, 0, 40)

UICorner_3.CornerRadius = UDim.new(0, 9)
UICorner_3.Parent = Toggle

Title_3.Name = "Title"
Title_3.Parent = Toggle
Title_3.AnchorPoint = Vector2.new(0, 0.5)
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0, 15, 0.5, 0)
Title_3.Size = UDim2.new(0, 385, 0, 14)
Title_3.Font = Enum.Font.GothamMedium
Title_3.Text = "Enable Tracers"
Title_3.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_3.TextSize = 14.000
Title_3.TextWrapped = true
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Interact.Name = "Interact"
Interact.Parent = Toggle
Interact.AnchorPoint = Vector2.new(0.5, 0.5)
Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact.BackgroundTransparency = 1.000
Interact.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact.BorderSizePixel = 0
Interact.Position = UDim2.new(0.815322578, 0, 0.5, 0)
Interact.Size = UDim2.new(0.369354695, 0, 1, 0)
Interact.ZIndex = 5
Interact.Font = Enum.Font.SourceSans
Interact.Text = ""
Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact.TextSize = 14.000
Interact.TextTransparency = 1.000

Switch.Name = "Switch"
Switch.Parent = Toggle
Switch.AnchorPoint = Vector2.new(1, 0.5)
Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(1, -10, 0, 20)
Switch.Size = UDim2.new(0, 43, 0, 21)

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = Switch

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Switch
Shadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_2.BackgroundTransparency = 1.000
Shadow_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow_2.BorderSizePixel = 0
Shadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow_2.Size = UDim2.new(1, 2, 1, 2)
Shadow_2.ZIndex = 3
Shadow_2.Image = "rbxassetid://3602733521"
Shadow_2.ImageColor3 = Color3.fromRGB(20, 20, 20)
Shadow_2.ImageTransparency = 0.600

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = Shadow_2

Indicator.Name = "Indicator"
Indicator.Parent = Switch
Indicator.AnchorPoint = Vector2.new(0, 0.5)
Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.BorderSizePixel = 0
Indicator.Position = UDim2.new(1, -40, 0.5, 0)
Indicator.Size = UDim2.new(0, 17, 0, 17)

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = Indicator

SectionSpacing.Name = "SectionSpacing"
SectionSpacing.Parent = Template
SectionSpacing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionSpacing.BackgroundTransparency = 1.000
SectionSpacing.BorderColor3 = Color3.fromRGB(27, 42, 53)
SectionSpacing.BorderSizePixel = 0
SectionSpacing.Position = UDim2.new(0, 0, 0.480916023, 0)
SectionSpacing.Size = UDim2.new(1, 0, 0, 8)
SectionSpacing.Visible = false

Slider.Name = "Slider"
Slider.Parent = Template
Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Slider.BorderColor3 = Color3.fromRGB(27, 42, 53)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.0105263162, 0, 0.450381666, 0)
Slider.Size = UDim2.new(1, -10, 0.0279898215, 35)

UICorner_7.CornerRadius = UDim.new(0, 9)
UICorner_7.Parent = Slider

Title_4.Name = "Title"
Title_4.Parent = Slider
Title_4.AnchorPoint = Vector2.new(0, 0.5)
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0, 15, 0.5, 0)
Title_4.Size = UDim2.new(0, 200, 0, 14)
Title_4.Font = Enum.Font.GothamMedium
Title_4.Text = "ESP Range"
Title_4.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_4.TextSize = 14.000
Title_4.TextWrapped = true
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Template
Input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Input.BorderColor3 = Color3.fromRGB(27, 42, 53)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.0105263162, 0, 0.669211209, 0)
Input.Size = UDim2.new(1, -10, 0, 40)

UICorner_8.CornerRadius = UDim.new(0, 9)
UICorner_8.Parent = Input

Title_5.Name = "Title"
Title_5.Parent = Input
Title_5.AnchorPoint = Vector2.new(0, 0.5)
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0, 15, 0.5, 0)
Title_5.Size = UDim2.new(0, 200, 0, 14)
Title_5.Font = Enum.Font.GothamMedium
Title_5.Text = "Target Player"
Title_5.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_5.TextSize = 14.000
Title_5.TextWrapped = true
Title_5.TextXAlignment = Enum.TextXAlignment.Left

InputFrame.Name = "InputFrame"
InputFrame.Parent = Input
InputFrame.AnchorPoint = Vector2.new(1, 0.5)
InputFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InputFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputFrame.BorderSizePixel = 0
InputFrame.Position = UDim2.new(1, -7, 0, 20)
InputFrame.Size = UDim2.new(0, 120, 0, 30)

InputBox.Name = "InputBox"
InputBox.Parent = InputFrame
InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.BackgroundTransparency = 1.000
InputBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox.Size = UDim2.new(1, -15, 0, 14)
InputBox.ClearTextOnFocus = false
InputBox.Font = Enum.Font.GothamMedium
InputBox.PlaceholderText = "Dynamic Input"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
InputBox.TextSize = 14.000

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = InputFrame

Keybind.Name = "Keybind"
Keybind.Parent = Template
Keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Keybind.BorderColor3 = Color3.fromRGB(27, 42, 53)
Keybind.BorderSizePixel = 0
Keybind.Position = UDim2.new(0.0105263162, 0, 0.669211209, 0)
Keybind.Size = UDim2.new(1, -10, 0, 40)

UICorner_10.CornerRadius = UDim.new(0, 9)
UICorner_10.Parent = Keybind

Title_6.Name = "Title"
Title_6.Parent = Keybind
Title_6.AnchorPoint = Vector2.new(0, 0.5)
Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_6.BackgroundTransparency = 1.000
Title_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_6.BorderSizePixel = 0
Title_6.Position = UDim2.new(0, 15, 0.5, 0)
Title_6.Size = UDim2.new(0, 200, 0, 14)
Title_6.Font = Enum.Font.GothamMedium
Title_6.Text = "Target Keybind"
Title_6.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_6.TextSize = 14.000
Title_6.TextWrapped = true
Title_6.TextXAlignment = Enum.TextXAlignment.Left

KeybindFrame.Name = "KeybindFrame"
KeybindFrame.Parent = Keybind
KeybindFrame.AnchorPoint = Vector2.new(1, 0.5)
KeybindFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeybindFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
KeybindFrame.BorderSizePixel = 0
KeybindFrame.Position = UDim2.new(1, -7, 0, 20)
KeybindFrame.Size = UDim2.new(0, 34, 0, 30)

KeybindBox.Name = "KeybindBox"
KeybindBox.Parent = KeybindFrame
KeybindBox.AnchorPoint = Vector2.new(0.5, 0.5)
KeybindBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeybindBox.BackgroundTransparency = 1.000
KeybindBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
KeybindBox.BorderSizePixel = 0
KeybindBox.Position = UDim2.new(0.5, 0, 0.5, 0)
KeybindBox.Size = UDim2.new(1, -15, 0, 14)
KeybindBox.ClearTextOnFocus = false
KeybindBox.Font = Enum.Font.GothamMedium
KeybindBox.PlaceholderText = "Keybind"
KeybindBox.Text = "Q"
KeybindBox.TextColor3 = Color3.fromRGB(240, 240, 240)
KeybindBox.TextSize = 14.000

UICorner_11.CornerRadius = UDim.new(0, 10)
UICorner_11.Parent = KeybindFrame

Dropdown.Name = "Dropdown"
Dropdown.Parent = Template
Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Dropdown.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(-0.00631578872, 0, 0.39556998, 0)
Dropdown.Size = UDim2.new(1, -10, 0, 180)

UICorner_12.CornerRadius = UDim.new(0, 9)
UICorner_12.Parent = Dropdown

Title_7.Name = "Title"
Title_7.Parent = Dropdown
Title_7.AnchorPoint = Vector2.new(0.5, 0.5)
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_7.BorderSizePixel = 0
Title_7.Position = UDim2.new(0, 135, 0, 23)
Title_7.Size = UDim2.new(0, 237, 0, 14)
Title_7.ZIndex = 3
Title_7.Font = Enum.Font.GothamMedium
Title_7.Text = "Dropdown"
Title_7.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_7.TextSize = 14.000
Title_7.TextWrapped = true
Title_7.TextXAlignment = Enum.TextXAlignment.Left

List.Name = "List"
List.Parent = Dropdown
List.Active = true
List.AnchorPoint = Vector2.new(0.5, 0)
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.BorderSizePixel = 0
List.Position = UDim2.new(0.5, 0, 0, 38)
List.Size = UDim2.new(1, 0, 1, -38)
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.ScrollBarThickness = 3

UIListLayout_2.Parent = List
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

Placeholder.Name = "Placeholder"
Placeholder.Parent = List
Placeholder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Placeholder.BorderColor3 = Color3.fromRGB(27, 42, 53)
Placeholder.BorderSizePixel = 0
Placeholder.LayoutOrder = -100
Placeholder.Position = UDim2.new(0.392473131, 0, 0, 0)

Template_2.Name = "Template"
Template_2.Parent = List
Template_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Template_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Template_2.BorderSizePixel = 0
Template_2.Position = UDim2.new(0.392473131, 0, 0, 0)
Template_2.Size = UDim2.new(1, -12, 0, 38)

UICorner_13.CornerRadius = UDim.new(0, 9)
UICorner_13.Parent = Template_2

Title_8.Name = "Title"
Title_8.Parent = Template_2
Title_8.AnchorPoint = Vector2.new(0, 0.5)
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000
Title_8.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_8.BorderSizePixel = 0
Title_8.Position = UDim2.new(0, 15, 0.5, 0)
Title_8.Size = UDim2.new(0, 316, 0, 14)
Title_8.Font = Enum.Font.GothamMedium
Title_8.Text = "Option"
Title_8.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_8.TextScaled = true
Title_8.TextSize = 14.000
Title_8.TextWrapped = true
Title_8.TextXAlignment = Enum.TextXAlignment.Left

Interact_2.Name = "Interact"
Interact_2.Parent = Template_2
Interact_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_2.BackgroundTransparency = 1.000
Interact_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact_2.BorderSizePixel = 0
Interact_2.Size = UDim2.new(1, 0, 1, 0)
Interact_2.ZIndex = 5
Interact_2.Font = Enum.Font.SourceSans
Interact_2.Text = ""
Interact_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_2.TextSize = 1.000

Selected.Name = "Selected"
Selected.Parent = Dropdown
Selected.AnchorPoint = Vector2.new(1, 0.5)
Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Selected.BackgroundTransparency = 1.000
Selected.BorderColor3 = Color3.fromRGB(27, 42, 53)
Selected.BorderSizePixel = 0
Selected.Position = UDim2.new(1, -41, 0, 23)
Selected.Size = UDim2.new(0, 168, 0, 14)
Selected.Font = Enum.Font.GothamMedium
Selected.Text = "Option #1"
Selected.TextColor3 = Color3.fromRGB(240, 240, 240)
Selected.TextScaled = true
Selected.TextSize = 14.000
Selected.TextTransparency = 0.500
Selected.TextWrapped = true
Selected.TextXAlignment = Enum.TextXAlignment.Right

UITextSizeConstraint.Parent = Selected
UITextSizeConstraint.MaxTextSize = 14

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Dropdown
Toggle_2.AnchorPoint = Vector2.new(1, 0.5)
Toggle_2.BackgroundTransparency = 1.000
Toggle_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Toggle_2.BorderSizePixel = 0
Toggle_2.LayoutOrder = 9
Toggle_2.Position = UDim2.new(1, -12, 0, 23)
Toggle_2.Size = UDim2.new(0, 24, 0, 24)
Toggle_2.Image = "rbxassetid://3926305904"
Toggle_2.ImageColor3 = Color3.fromRGB(150, 150, 150)
Toggle_2.ImageRectOffset = Vector2.new(564, 284)
Toggle_2.ImageRectSize = Vector2.new(36, 36)

Interact_3.Name = "Interact"
Interact_3.Parent = Dropdown
Interact_3.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_3.BackgroundTransparency = 1.000
Interact_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact_3.BorderSizePixel = 0
Interact_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact_3.Size = UDim2.new(1, 0, 1, 0)
Interact_3.ZIndex = 5
Interact_3.Font = Enum.Font.SourceSans
Interact_3.Text = ""
Interact_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_3.TextSize = 14.000
Interact_3.TextTransparency = 1.000

Label.Name = "Label"
Label.Parent = Template
Label.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(1, -10, 0, 35)

UICorner_14.CornerRadius = UDim.new(0, 9)
UICorner_14.Parent = Label

Title_9.Name = "Title"
Title_9.Parent = Label
Title_9.AnchorPoint = Vector2.new(0, 0.5)
Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_9.BackgroundTransparency = 1.000
Title_9.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_9.BorderSizePixel = 0
Title_9.Position = UDim2.new(0, 15, 0.5, 0)
Title_9.Size = UDim2.new(0, 441, 0, 14)
Title_9.Font = Enum.Font.GothamMedium
Title_9.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_9.TextSize = 14.000
Title_9.TextWrapped = true
Title_9.TextXAlignment = Enum.TextXAlignment.Left

Icon_2.Name = "Icon"
Icon_2.Parent = Label
Icon_2.AnchorPoint = Vector2.new(0, 0.5)
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1.000
Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon_2.BorderSizePixel = 0
Icon_2.Position = UDim2.new(0, 15, 0.5, 0)
Icon_2.Size = UDim2.new(0, 24, 0, 24)
Icon_2.Visible = false
Icon_2.Image = "rbxassetid://11745872910"
Icon_2.ImageTransparency = 0.200

Paragraph.Name = "Paragraph"
Paragraph.Parent = Template
Paragraph.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Paragraph.BorderColor3 = Color3.fromRGB(27, 42, 53)
Paragraph.BorderSizePixel = 0
Paragraph.Position = UDim2.new(0.0105263162, 0, 0.314979255, 0)
Paragraph.Size = UDim2.new(1, -10, 0, 0)

UICorner_15.CornerRadius = UDim.new(0, 9)
UICorner_15.Parent = Paragraph

Title_10.Name = "Title"
Title_10.Parent = Paragraph
Title_10.AnchorPoint = Vector2.new(1, 0.5)
Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_10.BackgroundTransparency = 1.000
Title_10.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_10.BorderSizePixel = 0
Title_10.LayoutOrder = 1
Title_10.Position = UDim2.new(1, -10, 0, 18)
Title_10.Size = UDim2.new(0, 438, 0, 14)
Title_10.Font = Enum.Font.GothamMedium
Title_10.Text = "Paragraph Title"
Title_10.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_10.TextSize = 14.000
Title_10.TextWrapped = true
Title_10.TextXAlignment = Enum.TextXAlignment.Left

Content.Name = "Content"
Content.Parent = Paragraph
Content.AnchorPoint = Vector2.new(1, 0.5)
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(27, 42, 53)
Content.BorderSizePixel = 0
Content.LayoutOrder = 2
Content.Position = UDim2.new(1, -10, 0.5, 0)
Content.Size = UDim2.new(0, 438, 0, 0)
Content.Font = Enum.Font.GothamMedium
Content.Text = "hi"
Content.TextColor3 = Color3.fromRGB(180, 180, 180)
Content.TextSize = 13.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top

UIListLayout_3.Parent = Paragraph
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 2)

Buffer.Name = "Buffer"
Buffer.Parent = Paragraph
Buffer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buffer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Buffer.BorderSizePixel = 0
Buffer.LayoutOrder = 5
Buffer.Size = UDim2.new(0, 0, 0, 8)

Buffer_2.Name = "Buffer"
Buffer_2.Parent = Paragraph
Buffer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buffer_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Buffer_2.BorderSizePixel = 0
Buffer_2.LayoutOrder = -1
Buffer_2.Size = UDim2.new(0, 0, 0, 8)

Placeholder_2.Name = "Placeholder"
Placeholder_2.Parent = Template
Placeholder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Placeholder_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Placeholder_2.BorderSizePixel = 0
Placeholder_2.LayoutOrder = 1000

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = Template
ColorPicker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ColorPicker.BorderColor3 = Color3.fromRGB(27, 42, 53)
ColorPicker.BorderSizePixel = 0
ColorPicker.Position = UDim2.new(0.0105263162, 0, 0.573770463, 0)
ColorPicker.Size = UDim2.new(1, -10, 0, 120)

UICorner_16.CornerRadius = UDim.new(0, 9)
UICorner_16.Parent = ColorPicker

Interact_4.Name = "Interact"
Interact_4.Parent = ColorPicker
Interact_4.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_4.BackgroundTransparency = 1.000
Interact_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact_4.BorderSizePixel = 0
Interact_4.Position = UDim2.new(0.289247304, 0, 0.5, 0)
Interact_4.Size = UDim2.new(0.574193478, 0, 1.00000024, 0)
Interact_4.ZIndex = 5
Interact_4.Font = Enum.Font.SourceSans
Interact_4.Text = ""
Interact_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_4.TextSize = 14.000
Interact_4.TextTransparency = 1.000

CPBackground.Name = "CPBackground"
CPBackground.Parent = ColorPicker
CPBackground.AnchorPoint = Vector2.new(1, 0)
CPBackground.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
CPBackground.BorderColor3 = Color3.fromRGB(27, 42, 53)
CPBackground.BorderSizePixel = 0
CPBackground.Position = UDim2.new(0, 449, 0, 11)
CPBackground.Size = UDim2.new(0, 173, 0, 86)

MainCP.Name = "MainCP"
MainCP.Parent = CPBackground
MainCP.AnchorPoint = Vector2.new(0.5, 0.5)
MainCP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainCP.BackgroundTransparency = 1.000
MainCP.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainCP.BorderSizePixel = 0
MainCP.Position = UDim2.new(0.5, 0, 0.5, 0)
MainCP.Size = UDim2.new(1, 0, 1, 0)
MainCP.Image = "http://www.roblox.com/asset/?id=11413591840"
MainCP.ImageTransparency = 0.100

UICorner_17.CornerRadius = UDim.new(0, 5)
UICorner_17.Parent = MainCP

MainPoint.Name = "MainPoint"
MainPoint.Parent = MainCP
MainPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainPoint.BackgroundTransparency = 1.000
MainPoint.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainPoint.Position = UDim2.new(0.182817578, 0, 0.248957321, 0)
MainPoint.Size = UDim2.new(0, 59, 0, 59)
MainPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
MainPoint.ImageColor3 = Color3.fromRGB(28, 72, 0)

UICorner_18.CornerRadius = UDim.new(0, 6)
UICorner_18.Parent = CPBackground

Display.Name = "Display"
Display.Parent = CPBackground
Display.AnchorPoint = Vector2.new(0.5, 0.5)
Display.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
Display.BorderColor3 = Color3.fromRGB(27, 42, 53)
Display.Position = UDim2.new(0.5, 0, 0.5, 0)
Display.Size = UDim2.new(1, 0, 1, 0)

UICorner_19.CornerRadius = UDim.new(0, 6)
UICorner_19.Parent = Display

Frame.Parent = Display
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.750
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)

UICorner_20.CornerRadius = UDim.new(0, 6)
UICorner_20.Parent = Frame

HexInput.Name = "HexInput"
HexInput.Parent = ColorPicker
HexInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HexInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
HexInput.BorderSizePixel = 0
HexInput.Position = UDim2.new(0, 17, 0, 73)
HexInput.Size = UDim2.new(0, 119, 0, 31)
HexInput.ZIndex = 10

UICorner_21.CornerRadius = UDim.new(0, 10)
UICorner_21.Parent = HexInput

InputBox_2.Name = "InputBox"
InputBox_2.Parent = HexInput
InputBox_2.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox_2.BackgroundTransparency = 1.000
InputBox_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox_2.BorderSizePixel = 0
InputBox_2.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox_2.Size = UDim2.new(0.979623735, -15, 0, 14)
InputBox_2.ZIndex = 10
InputBox_2.ClearTextOnFocus = false
InputBox_2.Font = Enum.Font.GothamMedium
InputBox_2.PlaceholderText = "hex"
InputBox_2.Text = ""
InputBox_2.TextColor3 = Color3.fromRGB(200, 200, 200)
InputBox_2.TextSize = 14.000
InputBox_2.TextXAlignment = Enum.TextXAlignment.Left

ColorSlider.Name = "ColorSlider"
ColorSlider.Parent = ColorPicker
ColorSlider.AnchorPoint = Vector2.new(1, 0)
ColorSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColorSlider.BorderColor3 = Color3.fromRGB(27, 42, 53)
ColorSlider.ClipsDescendants = true
ColorSlider.Position = UDim2.new(0, 449, 0, 102)
ColorSlider.Size = UDim2.new(0, 173, 0, 12)
ColorSlider.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)), ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)), ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
UIGradient.Parent = ColorSlider

SliderPoint.Name = "SliderPoint"
SliderPoint.Parent = ColorSlider
SliderPoint.AnchorPoint = Vector2.new(0, 0.5)
SliderPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderPoint.BackgroundTransparency = 1.000
SliderPoint.BorderColor3 = Color3.fromRGB(27, 42, 53)
SliderPoint.Position = UDim2.new(0.181999996, 0, 0.5, 0)
SliderPoint.Size = UDim2.new(0, 59, 0, 59)
SliderPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
SliderPoint.ImageColor3 = Color3.fromRGB(0, 255, 0)

TintAdder.Name = "TintAdder"
TintAdder.Parent = ColorSlider
TintAdder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TintAdder.BackgroundTransparency = 0.800
TintAdder.BorderColor3 = Color3.fromRGB(27, 42, 53)
TintAdder.Size = UDim2.new(1, 0, 1, 0)
TintAdder.Font = Enum.Font.SourceSans
TintAdder.Text = ""
TintAdder.TextColor3 = Color3.fromRGB(0, 0, 0)
TintAdder.TextSize = 14.000

UICorner_22.CornerRadius = UDim.new(0, 6)
UICorner_22.Parent = TintAdder

UICorner_23.CornerRadius = UDim.new(0, 6)
UICorner_23.Parent = ColorSlider

Title_11.Name = "Title"
Title_11.Parent = ColorPicker
Title_11.AnchorPoint = Vector2.new(0.5, 0.5)
Title_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_11.BackgroundTransparency = 1.000
Title_11.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_11.BorderSizePixel = 0
Title_11.Position = UDim2.new(0, 135, 0, 22)
Title_11.Size = UDim2.new(0, 237, 0, 14)
Title_11.ZIndex = 3
Title_11.Font = Enum.Font.GothamMedium
Title_11.Text = "Color Picker"
Title_11.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_11.TextSize = 14.000
Title_11.TextWrapped = true
Title_11.TextXAlignment = Enum.TextXAlignment.Left

RGB.Name = "RGB"
RGB.Parent = ColorPicker
RGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RGB.BackgroundTransparency = 1.000
RGB.BorderColor3 = Color3.fromRGB(27, 42, 53)
RGB.Position = UDim2.new(0, 17, 0, 40)
RGB.Size = UDim2.new(0, 232, 0, 29)

UIListLayout_4.Parent = RGB
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 5)

GInput.Name = "GInput"
GInput.Parent = RGB
GInput.AnchorPoint = Vector2.new(1, 0.5)
GInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
GInput.BorderSizePixel = 0
GInput.LayoutOrder = 1
GInput.Position = UDim2.new(0.359774143, -7, 0.495833337, 0)
GInput.Size = UDim2.new(0, 54, 0, 27)
GInput.ZIndex = 10

UICorner_24.CornerRadius = UDim.new(0, 10)
UICorner_24.Parent = GInput

InputBox_3.Name = "InputBox"
InputBox_3.Parent = GInput
InputBox_3.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox_3.BackgroundTransparency = 1.000
InputBox_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox_3.BorderSizePixel = 0
InputBox_3.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox_3.Size = UDim2.new(0.874000013, -15, 0, 14)
InputBox_3.ZIndex = 10
InputBox_3.ClearTextOnFocus = false
InputBox_3.Font = Enum.Font.GothamMedium
InputBox_3.PlaceholderText = "G"
InputBox_3.Text = ""
InputBox_3.TextColor3 = Color3.fromRGB(200, 200, 200)
InputBox_3.TextSize = 12.000
InputBox_3.TextXAlignment = Enum.TextXAlignment.Left

RInput.Name = "RInput"
RInput.Parent = RGB
RInput.AnchorPoint = Vector2.new(1, 0.5)
RInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
RInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
RInput.BorderSizePixel = 0
RInput.Position = UDim2.new(0.181516185, -5, 0.495833337, 0)
RInput.Size = UDim2.new(0, 54, 0, 27)
RInput.ZIndex = 10

UICorner_25.CornerRadius = UDim.new(0, 10)
UICorner_25.Parent = RInput

InputBox_4.Name = "InputBox"
InputBox_4.Parent = RInput
InputBox_4.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox_4.BackgroundTransparency = 1.000
InputBox_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox_4.BorderSizePixel = 0
InputBox_4.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox_4.Size = UDim2.new(0.873715758, -15, 0, 14)
InputBox_4.ZIndex = 10
InputBox_4.ClearTextOnFocus = false
InputBox_4.Font = Enum.Font.GothamMedium
InputBox_4.PlaceholderText = "R"
InputBox_4.Text = ""
InputBox_4.TextColor3 = Color3.fromRGB(200, 200, 200)
InputBox_4.TextSize = 12.000
InputBox_4.TextXAlignment = Enum.TextXAlignment.Left

BInput.Name = "BInput"
BInput.Parent = RGB
BInput.AnchorPoint = Vector2.new(1, 0.5)
BInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
BInput.BorderSizePixel = 0
BInput.LayoutOrder = 2
BInput.Position = UDim2.new(0.927801728, -5, 0.465517253, 0)
BInput.Size = UDim2.new(0, 54, 0, 27)
BInput.ZIndex = 10

UICorner_26.CornerRadius = UDim.new(0, 10)
UICorner_26.Parent = BInput

InputBox_5.Name = "InputBox"
InputBox_5.Parent = BInput
InputBox_5.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox_5.BackgroundTransparency = 1.000
InputBox_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox_5.BorderSizePixel = 0
InputBox_5.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox_5.Size = UDim2.new(0.874000013, -15, 0, 14)
InputBox_5.ZIndex = 10
InputBox_5.ClearTextOnFocus = false
InputBox_5.Font = Enum.Font.GothamMedium
InputBox_5.PlaceholderText = "B"
InputBox_5.Text = ""
InputBox_5.TextColor3 = Color3.fromRGB(200, 200, 200)
InputBox_5.TextSize = 12.000
InputBox_5.TextXAlignment = Enum.TextXAlignment.Left

Divider_2.Name = "Divider"
Divider_2.Parent = Template
Divider_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Divider_2.BackgroundTransparency = 1.000
Divider_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Divider_2.BorderSizePixel = 0
Divider_2.Size = UDim2.new(1, 0, 0, 20)

Divider_3.Name = "Divider"
Divider_3.Parent = Divider_2
Divider_3.AnchorPoint = Vector2.new(0.5, 0.5)
Divider_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Divider_3.BackgroundTransparency = 0.850
Divider_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Divider_3.BorderSizePixel = 0
Divider_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Divider_3.Size = UDim2.new(1, -50, 0, 2)

UICorner_27.CornerRadius = UDim.new(1, 0)
UICorner_27.Parent = Divider_3

Button.Name = "Button"
Button.Parent = Template
Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, -10, 0, 35)

UICorner_28.CornerRadius = UDim.new(0, 9)
UICorner_28.Parent = Button

Title_12.Name = "Title"
Title_12.Parent = Button
Title_12.AnchorPoint = Vector2.new(0, 0.5)
Title_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_12.BackgroundTransparency = 1.000
Title_12.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_12.BorderSizePixel = 0
Title_12.Position = UDim2.new(0, 15, 0.5, 0)
Title_12.Size = UDim2.new(0, 315, 0, 14)
Title_12.Font = Enum.Font.GothamMedium
Title_12.Text = "Reset Aimbot System"
Title_12.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_12.TextSize = 14.000
Title_12.TextWrapped = true
Title_12.TextXAlignment = Enum.TextXAlignment.Left

ElementIndicator.Name = "ElementIndicator"
ElementIndicator.Parent = Button
ElementIndicator.AnchorPoint = Vector2.new(1, 0.5)
ElementIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementIndicator.BackgroundTransparency = 1.000
ElementIndicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
ElementIndicator.BorderSizePixel = 0
ElementIndicator.Position = UDim2.new(1, -10, 0.5, 0)
ElementIndicator.Size = UDim2.new(0, 108, 0, 13)
ElementIndicator.Font = Enum.Font.GothamMedium
ElementIndicator.Text = "button"
ElementIndicator.TextColor3 = Color3.fromRGB(240, 240, 240)
ElementIndicator.TextScaled = true
ElementIndicator.TextSize = 14.000
ElementIndicator.TextTransparency = 0.900
ElementIndicator.TextWrapped = true
ElementIndicator.TextXAlignment = Enum.TextXAlignment.Right

Interact_5.Name = "Interact"
Interact_5.Parent = Button
Interact_5.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_5.BackgroundTransparency = 1.000
Interact_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact_5.BorderSizePixel = 0
Interact_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact_5.Size = UDim2.new(1, 0, 1, 0)
Interact_5.ZIndex = 5
Interact_5.Font = Enum.Font.SourceSans
Interact_5.Text = ""
Interact_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_5.TextSize = 14.000
Interact_5.TextTransparency = 1.000

Image_2.Name = "Image"
Image_2.Parent = Template
Image_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Image_2.BackgroundTransparency = 1.000
Image_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Image_2.BorderSizePixel = 0
Image_2.Size = UDim2.new(1, -10, 0, 80)

UICorner_29.CornerRadius = UDim.new(0, 9)
UICorner_29.Parent = Image_2

ImageLabel.Parent = Image_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UIPageLayout.Parent = Elements
UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIPageLayout.EasingStyle = Enum.EasingStyle.Exponential
UIPageLayout.GamepadInputEnabled = false
UIPageLayout.ScrollWheelInputEnabled = false
UIPageLayout.TouchInputEnabled = false
UIPageLayout.TweenTime = 0.500

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = Main
LoadingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingFrame.BackgroundTransparency = 1.000
LoadingFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
LoadingFrame.Visible = false
LoadingFrame.ZIndex = 30

-- Title_13.Name = "Title"
-- Title_13.Parent = LoadingFrame
-- Title_13.AnchorPoint = Vector2.new(0, 0.5)
-- Title_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
-- Title_13.BackgroundTransparency = 1.000
-- Title_13.BorderColor3 = Color3.fromRGB(27, 42, 53)
-- Title_13.BorderSizePixel = 0
-- Title_13.Position = UDim2.new(0, 25, 0.5, -8)
-- Title_13.Size = UDim2.new(0, 300, 0, 16)
-- Title_13.Font = Enum.Font.Unknown
-- Title_13.Text = "Rayfield"
-- Title_13.TextColor3 = Color3.fromRGB(240, 240, 240)
-- Title_13.TextSize = 16.000
-- Title_13.TextWrapped = true
-- Title_13.TextXAlignment = Enum.TextXAlignment.Left

Subtitle.Name = "Subtitle"
Subtitle.Parent = LoadingFrame
Subtitle.AnchorPoint = Vector2.new(0, 0.5)
Subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Subtitle.BackgroundTransparency = 1.000
Subtitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Subtitle.BorderSizePixel = 0
Subtitle.Position = UDim2.new(0, 25, 0.5, 8)
Subtitle.Size = UDim2.new(0, 200, 0, 15)
Subtitle.Font = Enum.Font.Unknown
Subtitle.Text = "Interface Suite"
Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
Subtitle.TextSize = 15.000
Subtitle.TextWrapped = true
Subtitle.TextXAlignment = Enum.TextXAlignment.Left

Version.Name = "Version"
Version.Parent = LoadingFrame
Version.AnchorPoint = Vector2.new(1, 1)
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderColor3 = Color3.fromRGB(27, 42, 53)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(1, -10, 1, -10)
Version.Size = UDim2.new(0, 200, 0, 13)
Version.Font = Enum.Font.Gotham
Version.Text = "release R1"
Version.TextColor3 = Color3.fromRGB(70, 70, 70)
Version.TextScaled = true
Version.TextSize = 14.000
Version.TextWrapped = true
Version.TextXAlignment = Enum.TextXAlignment.Right

TabList.Name = "TabList"
TabList.Parent = Main
TabList.Active = true
TabList.AnchorPoint = Vector2.new(0.5, 0.5)
TabList.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TabList.BackgroundTransparency = 1.000
TabList.BorderColor3 = Color3.fromRGB(27, 42, 53)
TabList.BorderSizePixel = 0
TabList.Position = UDim2.new(0.5, 0, 0, 72)
TabList.Size = UDim2.new(1, -25, 0, 36)
TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
TabList.ScrollBarThickness = 0

UIListLayout_5.Parent = TabList
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_5.Padding = UDim.new(0, 6)

Placeholder_3.Name = "Placeholder"
Placeholder_3.Parent = TabList
Placeholder_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Placeholder_3.BackgroundTransparency = 1.000
Placeholder_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Placeholder_3.BorderSizePixel = 0
Placeholder_3.LayoutOrder = -100
Placeholder_3.Position = UDim2.new(0.174193546, 0, 0, 0)

Template_3.Name = "Template"
Template_3.Parent = TabList
Template_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Template_3.BackgroundTransparency = 0.700
Template_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Template_3.BorderSizePixel = 0
Template_3.Position = UDim2.new(0.174193546, 0, 0, 0)
Template_3.Size = UDim2.new(0, 110, 0, 30)

UICorner_30.CornerRadius = UDim.new(1, 0)
UICorner_30.Parent = Template_3

Title_14.Name = "Title"
Title_14.Parent = Template_3
Title_14.AnchorPoint = Vector2.new(0.5, 0.5)
Title_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_14.BackgroundTransparency = 1.000
Title_14.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_14.BorderSizePixel = 0
Title_14.Position = UDim2.new(0.5, 0, 0.5, 0)
Title_14.Size = UDim2.new(0.800000012, 0, 0, 14)
Title_14.ZIndex = 5
Title_14.Font = Enum.Font.GothamMedium
Title_14.Text = "Automation"
Title_14.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_14.TextSize = 14.000
Title_14.TextTransparency = 0.200

Interact_6.Name = "Interact"
Interact_6.Parent = Template_3
Interact_6.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_6.BackgroundTransparency = 1.000
Interact_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact_6.BorderSizePixel = 0
Interact_6.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact_6.Size = UDim2.new(1, 0, 1, 0)
Interact_6.ZIndex = 3
Interact_6.Font = Enum.Font.SourceSans
Interact_6.Text = ""
Interact_6.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_6.TextSize = 14.000
Interact_6.TextTransparency = 1.000

Image_3.Name = "Image"
Image_3.Parent = Template_3
Image_3.AnchorPoint = Vector2.new(0, 0.5)
Image_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image_3.BackgroundTransparency = 1.000
Image_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Image_3.BorderSizePixel = 0
Image_3.Position = UDim2.new(0, 11, 0.5, 0)
Image_3.Size = UDim2.new(0, 20, 0, 20)
Image_3.Visible = false
Image_3.ZIndex = 2
Image_3.Image = "rbxassetid://4483362458"
Image_3.ImageColor3 = Color3.fromRGB(240, 240, 240)
Image_3.ScaleType = Enum.ScaleType.Fit

Preview.Name = "Preview"
Preview.Parent = Main
Preview.AnchorPoint = Vector2.new(0.5, 0.5)
Preview.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Preview.BorderColor3 = Color3.fromRGB(27, 42, 53)
Preview.Position = UDim2.new(1.24021554, 0, 0.489558876, 0)
Preview.Size = UDim2.new(0, 218, 0, 279)
Preview.Visible = false
Preview.ZIndex = 5

UICorner_31.CornerRadius = UDim.new(0, 9)
UICorner_31.Parent = Preview

Shadow_3.Name = "Shadow"
Shadow_3.Parent = Preview
Shadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_3.BackgroundTransparency = 1.000
Shadow_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow_3.BorderSizePixel = 0
Shadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow_3.Size = UDim2.new(1, 35, 1, 35)
Shadow_3.ZIndex = 4

Image_4.Name = "Image"
Image_4.Parent = Shadow_3
Image_4.AnchorPoint = Vector2.new(0.5, 0.5)
Image_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image_4.BackgroundTransparency = 1.000
Image_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Image_4.BorderSizePixel = 0
Image_4.Position = UDim2.new(0.5, 0, 0.5, 0)
Image_4.Size = UDim2.new(1.17956781, 0, 1.29999995, 0)
Image_4.ZIndex = 4
Image_4.Image = "rbxassetid://5587865193"
Image_4.ImageColor3 = Color3.fromRGB(20, 20, 20)
Image_4.ImageTransparency = 0.300

Description.Name = "Description"
Description.Parent = Preview
Description.AnchorPoint = Vector2.new(1, 0)
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(27, 42, 53)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(1, -15, 0, 173)
Description.Size = UDim2.new(0, 188, 0, 94)
Description.ZIndex = 5
Description.Font = Enum.Font.Gotham
Description.Text = "Enable Tracers and track users from a point on your screen based on your configuration"
Description.TextColor3 = Color3.fromRGB(210, 210, 210)
Description.TextSize = 14.000
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.TextYAlignment = Enum.TextYAlignment.Top

Title_15.Name = "Title"
Title_15.Parent = Preview
Title_15.AnchorPoint = Vector2.new(1, 0)
Title_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_15.BackgroundTransparency = 1.000
Title_15.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_15.BorderSizePixel = 0
Title_15.Position = UDim2.new(1, -15, 0, 30)
Title_15.Size = UDim2.new(0, 188, 0, 15)
Title_15.ZIndex = 5
Title_15.Font = Enum.Font.Unknown
Title_15.Text = "Enable Tracers"
Title_15.TextColor3 = Color3.fromRGB(240, 240, 240)
Title_15.TextSize = 15.000
Title_15.TextWrapped = true
Title_15.TextXAlignment = Enum.TextXAlignment.Left

State.Name = "State"
State.Parent = Preview
State.AnchorPoint = Vector2.new(1, 0)
State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
State.BackgroundTransparency = 1.000
State.BorderColor3 = Color3.fromRGB(27, 42, 53)
State.BorderSizePixel = 0
State.Position = UDim2.new(1, -15, 0, 18)
State.Size = UDim2.new(0, 188, 0, 11)
State.ZIndex = 5
State.Font = Enum.Font.GothamMedium
State.Text = "DISABLED"
State.TextColor3 = Color3.fromRGB(210, 53, 22)
State.TextScaled = true
State.TextSize = 15.000
State.TextTransparency = 0.200
State.TextWrapped = true
State.TextXAlignment = Enum.TextXAlignment.Left

PreviewImage.Name = "PreviewImage"
PreviewImage.Parent = Preview
PreviewImage.AnchorPoint = Vector2.new(1, 0)
PreviewImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PreviewImage.BackgroundTransparency = 1.000
PreviewImage.BorderColor3 = Color3.fromRGB(27, 42, 53)
PreviewImage.Position = UDim2.new(1, -15, 0, 55)
PreviewImage.Size = UDim2.new(0, 188, 0, 106)
PreviewImage.ZIndex = 5
PreviewImage.Image = "rbxassetid://12577727209"

Search_2.Name = "Search"
Search_2.Parent = Main
Search_2.AnchorPoint = Vector2.new(0.5, 0)
Search_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Search_2.BackgroundTransparency = 0.900
Search_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search_2.BorderSizePixel = 0
Search_2.Position = UDim2.new(0.5, 0, 0, 57)
Search_2.Size = UDim2.new(1, -35, 0, 35)
Search_2.Visible = false
Search_2.ZIndex = 10

UICorner_32.CornerRadius = UDim.new(1, 0)
UICorner_32.Parent = Search_2

Search_3.Name = "Search"
Search_3.Parent = Search_2
Search_3.AnchorPoint = Vector2.new(0, 0.5)
Search_3.BackgroundTransparency = 1.000
Search_3.Position = UDim2.new(0, 15, 0.5, 1)
Search_3.Size = UDim2.new(0, 16, 0, 16)
Search_3.ZIndex = 10
Search_3.Image = "rbxassetid://18458939117"
Search_3.ImageTransparency = 0.650

Input_2.Name = "Input"
Input_2.Parent = Search_2
Input_2.AnchorPoint = Vector2.new(0, 0.5)
Input_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input_2.BackgroundTransparency = 1.000
Input_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Input_2.BorderSizePixel = 0
Input_2.ClipsDescendants = true
Input_2.Position = UDim2.new(0, 40, 0.5, 0)
Input_2.Size = UDim2.new(1, -110, 0, 18)
Input_2.ZIndex = 10
Input_2.ClearTextOnFocus = false
Input_2.Font = Enum.Font.Unknown
Input_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Input_2.PlaceholderText = "Search this page"
Input_2.Text = ""
Input_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Input_2.TextSize = 16.000
Input_2.TextTransparency = 0.200
Input_2.TextWrapped = true
Input_2.TextXAlignment = Enum.TextXAlignment.Left

Shadow_4.Name = "Shadow"
Shadow_4.Parent = Search_2
Shadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_4.BackgroundTransparency = 1.000
Shadow_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow_4.BorderSizePixel = 0
Shadow_4.Position = UDim2.new(0.5, 0, 0.528571427, 0)
Shadow_4.Size = UDim2.new(1.45000005, 0, 1.60000002, 0)
Shadow_4.ZIndex = 5
Shadow_4.Image = "rbxassetid://5587865193"
Shadow_4.ImageTransparency = 0.950

Notice.Name = "Notice"
Notice.Parent = Main
Notice.AnchorPoint = Vector2.new(0.5, 0)
Notice.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notice.BackgroundTransparency = 0.500
Notice.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notice.BorderSizePixel = 0
Notice.Position = UDim2.new(0.5, 0, 0, -50)
Notice.Size = UDim2.new(0, 280, 0, 35)
Notice.Visible = false
Notice.ZIndex = 5

UICorner_33.CornerRadius = UDim.new(1, 0)
UICorner_33.Parent = Notice

Title_16.Name = "Title"
Title_16.Parent = Notice
Title_16.AnchorPoint = Vector2.new(0.5, 0.5)
Title_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_16.BackgroundTransparency = 1.000
Title_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_16.BorderSizePixel = 0
Title_16.Position = UDim2.new(0.5, 0, 0.5, 0)
Title_16.Size = UDim2.new(1, 0, 0, 16)
Title_16.ZIndex = 5
Title_16.Font = Enum.Font.Unknown
Title_16.Text = "Loading Saved Configuration"
Title_16.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_16.TextSize = 16.000
Title_16.TextTransparency = 0.100
Title_16.TextWrapped = true

Notice_2.Name = "Notice"
Notice_2.Parent = Rayfield
Notice_2.AnchorPoint = Vector2.new(0.5, 1)
Notice_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Notice_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notice_2.BorderSizePixel = 0
Notice_2.Position = UDim2.new(0.5, 0, 1, -50)
Notice_2.Size = UDim2.new(0, 425, 0, 246)
Notice_2.Visible = false

UICorner_34.CornerRadius = UDim.new(0, 11)
UICorner_34.Parent = Notice_2

Title_17.Name = "Title"
Title_17.Parent = Notice_2
Title_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_17.BackgroundTransparency = 1.000
Title_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_17.BorderSizePixel = 0
Title_17.Position = UDim2.new(0, 20, 0, 15)
Title_17.Size = UDim2.new(0, 267, 0, 32)
Title_17.Font = Enum.Font.Unknown
Title_17.Text = "This version of Rayfield Library is outdated."
Title_17.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_17.TextScaled = true
Title_17.TextSize = 16.000
Title_17.TextWrapped = true
Title_17.TextXAlignment = Enum.TextXAlignment.Left
Title_17.TextYAlignment = Enum.TextYAlignment.Top

List_2.Name = "List"
List_2.Parent = Notice_2
List_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List_2.BackgroundTransparency = 1.000
List_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
List_2.BorderSizePixel = 0
List_2.Position = UDim2.new(0, 20, 0, 60)
List_2.Size = UDim2.new(0, 267, 0, 178)

_2.Name = "2"
_2.Parent = List_2
_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2.BackgroundTransparency = 1.000
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0, 20, 0.224000007, 0)
_2.Size = UDim2.new(0, 267, 0, 44)

Title_18.Name = "Title"
Title_18.Parent = _2
Title_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_18.BackgroundTransparency = 1.000
Title_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_18.BorderSizePixel = 0
Title_18.Size = UDim2.new(0, 267, 0, 15)
Title_18.Font = Enum.Font.Unknown
Title_18.Text = "If you are not the script author"
Title_18.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_18.TextScaled = true
Title_18.TextSize = 16.000
Title_18.TextTransparency = 0.500
Title_18.TextWrapped = true
Title_18.TextXAlignment = Enum.TextXAlignment.Left
Title_18.TextYAlignment = Enum.TextYAlignment.Top

Content_2.Name = "Content"
Content_2.Parent = _2
Content_2.AnchorPoint = Vector2.new(0, 1)
Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content_2.BackgroundTransparency = 1.000
Content_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content_2.BorderSizePixel = 0
Content_2.Position = UDim2.new(0, 0, 1, 0)
Content_2.Size = UDim2.new(0, 267, 0, 26)
Content_2.Font = Enum.Font.Unknown
Content_2.Text = "Notify the script author where possible to ensure their version of Rayfield is updated."
Content_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Content_2.TextScaled = true
Content_2.TextSize = 16.000
Content_2.TextTransparency = 0.200
Content_2.TextWrapped = true
Content_2.TextXAlignment = Enum.TextXAlignment.Left
Content_2.TextYAlignment = Enum.TextYAlignment.Top

UIListLayout_6.Parent = List_2
UIListLayout_6.Padding = UDim.new(0, 15)

_1.Name = "1"
_1.Parent = List_2
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BackgroundTransparency = 1.000
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0, 20, 0.224000007, 0)
_1.Size = UDim2.new(0, 267, 0, 44)

Title_19.Name = "Title"
Title_19.Parent = _1
Title_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_19.BackgroundTransparency = 1.000
Title_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_19.BorderSizePixel = 0
Title_19.Size = UDim2.new(0, 267, 0, 15)
Title_19.Font = Enum.Font.Unknown
Title_19.Text = "If you are the script author"
Title_19.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_19.TextScaled = true
Title_19.TextSize = 16.000
Title_19.TextTransparency = 0.500
Title_19.TextWrapped = true
Title_19.TextXAlignment = Enum.TextXAlignment.Left
Title_19.TextYAlignment = Enum.TextYAlignment.Top

Content_3.Name = "Content"
Content_3.Parent = _1
Content_3.AnchorPoint = Vector2.new(0, 1)
Content_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content_3.BackgroundTransparency = 1.000
Content_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content_3.BorderSizePixel = 0
Content_3.Position = UDim2.new(0, 0, 1, 0)
Content_3.Size = UDim2.new(0, 267, 0, 26)
Content_3.Font = Enum.Font.Unknown
Content_3.Text = "Change the link in the loadstring from github to https://sirius.menu/rayfield"
Content_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Content_3.TextScaled = true
Content_3.TextSize = 16.000
Content_3.TextTransparency = 0.200
Content_3.TextWrapped = true
Content_3.TextXAlignment = Enum.TextXAlignment.Left
Content_3.TextYAlignment = Enum.TextYAlignment.Top

_3.Name = "3"
_3.Parent = List_2
_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_3.BackgroundTransparency = 1.000
_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
_3.BorderSizePixel = 0
_3.Position = UDim2.new(0, 20, 0.224000007, 0)
_3.Size = UDim2.new(0, 267, 0, 44)

Title_20.Name = "Title"
Title_20.Parent = _3
Title_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_20.BackgroundTransparency = 1.000
Title_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_20.BorderSizePixel = 0
Title_20.Size = UDim2.new(0, 267, 0, 15)
Title_20.Font = Enum.Font.Unknown
Title_20.Text = "If you need support making this change"
Title_20.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_20.TextScaled = true
Title_20.TextSize = 16.000
Title_20.TextTransparency = 0.500
Title_20.TextWrapped = true
Title_20.TextXAlignment = Enum.TextXAlignment.Left
Title_20.TextYAlignment = Enum.TextYAlignment.Top

Content_4.Name = "Content"
Content_4.Parent = _3
Content_4.AnchorPoint = Vector2.new(0, 1)
Content_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content_4.BackgroundTransparency = 1.000
Content_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content_4.BorderSizePixel = 0
Content_4.Position = UDim2.new(0, 0, 1, 0)
Content_4.Size = UDim2.new(0, 267, 0, 26)
Content_4.Font = Enum.Font.Unknown
Content_4.Text = "Let us know in our Discord, at discord.gg/sirius, and we'll do our best to help."
Content_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Content_4.TextScaled = true
Content_4.TextSize = 16.000
Content_4.TextTransparency = 0.200
Content_4.TextWrapped = true
Content_4.TextXAlignment = Enum.TextXAlignment.Left
Content_4.TextYAlignment = Enum.TextYAlignment.Top

Interact_7.Name = "Interact"
Interact_7.Parent = Notice_2
Interact_7.AnchorPoint = Vector2.new(1, 1)
Interact_7.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Interact_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Interact_7.BorderSizePixel = 0
Interact_7.Position = UDim2.new(1, -10, 1, -10)
Interact_7.Size = UDim2.new(0, 64, 0, 32)
Interact_7.Font = Enum.Font.Unknown
Interact_7.Text = "Ok"
Interact_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Interact_7.TextSize = 15.000

UICorner_35.CornerRadius = UDim.new(1, 0)
UICorner_35.Parent = Interact_7

Prompt.Name = "Prompt"
Prompt.Parent = Rayfield
Prompt.AnchorPoint = Vector2.new(0.5, 0)
Prompt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Prompt.BackgroundTransparency = 0.300
Prompt.BorderColor3 = Color3.fromRGB(0, 0, 0)
Prompt.BorderSizePixel = 0
Prompt.Position = UDim2.new(0.5, 0, 0, 20)
Prompt.Size = UDim2.new(0, 120, 0, 30)
Prompt.Visible = false

UICorner_36.CornerRadius = UDim.new(1, 0)
UICorner_36.Parent = Prompt

Title_21.Name = "Title"
Title_21.Parent = Prompt
Title_21.AnchorPoint = Vector2.new(0.5, 0.5)
Title_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_21.BackgroundTransparency = 1.000
Title_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_21.BorderSizePixel = 0
Title_21.Position = UDim2.new(0.5, 0, 0.5, 0)
Title_21.Size = UDim2.new(1, 0, 1, 0)
Title_21.Font = Enum.Font.Unknown
Title_21.Text = "Show Rayfield"
Title_21.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_21.TextSize = 14.000
Title_21.TextTransparency = 0.300

Interact_8.Name = "Interact"
Interact_8.Parent = Prompt
Interact_8.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_8.BackgroundTransparency = 1.000
Interact_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Interact_8.BorderSizePixel = 0
Interact_8.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact_8.Size = UDim2.new(1, 0, 1, 0)
Interact_8.ZIndex = 5
Interact_8.Font = Enum.Font.SourceSans
Interact_8.Text = ""
Interact_8.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_8.TextSize = 14.000
Interact_8.TextTransparency = 1.000

Notifications.Name = "Notifications"
Notifications.Parent = Rayfield
Notifications.AnchorPoint = Vector2.new(1, 1)
Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notifications.BackgroundTransparency = 1.000
Notifications.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notifications.BorderSizePixel = 0
Notifications.Position = UDim2.new(1, -20, 1, -20)
Notifications.Size = UDim2.new(0, 300, 0, 800)

Template_4.Name = "Template"
Template_4.Parent = Notifications
Template_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Template_4.BackgroundTransparency = 0.450
Template_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Template_4.BorderSizePixel = 0
Template_4.Position = UDim2.new(0, 0, 0.813750029, 0)
Template_4.Size = UDim2.new(1, 0, 0, 170)
Template_4.Visible = false

UICorner_37.CornerRadius = UDim.new(0, 20)
UICorner_37.Parent = Template_4

Icon_3.Name = "Icon"
Icon_3.Parent = Template_4
Icon_3.AnchorPoint = Vector2.new(0, 0.5)
Icon_3.BackgroundColor3 = Color3.fromRGB(209, 209, 209)
Icon_3.BackgroundTransparency = 1.000
Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon_3.BorderSizePixel = 0
Icon_3.Position = UDim2.new(0, 25, 0.5, 0)
Icon_3.Size = UDim2.new(0, 24, 0, 24)
Icon_3.Image = "rbxassetid://77891951053543"

Interact_9.Name = "Interact"
Interact_9.Parent = Template_4
Interact_9.AnchorPoint = Vector2.new(0.5, 0.5)
Interact_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_9.BackgroundTransparency = 1.000
Interact_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Interact_9.BorderSizePixel = 0
Interact_9.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact_9.Size = UDim2.new(1, 0, 1, 0)
Interact_9.Font = Enum.Font.SourceSans
Interact_9.Text = ""
Interact_9.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_9.TextSize = 14.000
Interact_9.TextTransparency = 1.000

Description_2.Name = "Description"
Description_2.Parent = Template_4
Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_2.BackgroundTransparency = 1.000
Description_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Description_2.BorderSizePixel = 0
Description_2.Position = UDim2.new(0, 70, 0, 32)
Description_2.Size = UDim2.new(1, -80, 1, -40)
Description_2.ZIndex = 105
Description_2.Font = Enum.Font.Unknown
Description_2.Text = "If you're seeing this, this script may not be on the latest Rayfield version. The developer needs to use the sirius.menu/rayfield loadstring to use the latest features and fixes. \\n\\nVisit sirius.menu/discord for help."
Description_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_2.TextSize = 15.000
Description_2.TextTransparency = 0.350
Description_2.TextWrapped = true
Description_2.TextXAlignment = Enum.TextXAlignment.Left
Description_2.TextYAlignment = Enum.TextYAlignment.Top

Title_22.Name = "Title"
Title_22.Parent = Template_4
Title_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_22.BackgroundTransparency = 1.000
Title_22.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title_22.BorderSizePixel = 0
Title_22.Position = UDim2.new(0, 70, 0, 15)
Title_22.Size = UDim2.new(1, -80, 0, 16)
Title_22.ZIndex = 105
Title_22.Font = Enum.Font.Unknown
Title_22.Text = "Notification Error"
Title_22.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_22.TextSize = 16.000
Title_22.TextWrapped = true
Title_22.TextXAlignment = Enum.TextXAlignment.Left

Shadow_5.Name = "Shadow"
Shadow_5.Parent = Template_4
Shadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_5.BackgroundTransparency = 1.000
Shadow_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow_5.BorderSizePixel = 0
Shadow_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow_5.Size = UDim2.new(1.11060238, 0, 1.92164946, 0)
Shadow_5.ZIndex = 0
Shadow_5.Image = "rbxassetid://3523728077"
Shadow_5.ImageColor3 = Color3.fromRGB(33, 33, 33)
Shadow_5.ImageTransparency = 0.820

BlurFrame.Name = "BlurFrame"
BlurFrame.Parent = Template_4
BlurFrame.AnchorPoint = Vector2.new(0.5, 0.5)
BlurFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlurFrame.BackgroundTransparency = 1.000
BlurFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
BlurFrame.BorderSizePixel = 0
BlurFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
BlurFrame.Size = UDim2.new(1, -18, 1, -18)

UIListLayout_7.Parent = Notifications
UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout_7.Padding = UDim.new(0, 8)

Drag.Name = "Drag"
Drag.Parent = Rayfield
Drag.AnchorPoint = Vector2.new(0.5, 0.5)
Drag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drag.BackgroundTransparency = 1.000
Drag.BorderColor3 = Color3.fromRGB(0, 0, 0)
Drag.BorderSizePixel = 0
Drag.Position = UDim2.new(0.5, 0, 0.5, 255)
Drag.Size = UDim2.new(0, 150, 0, 20)
Drag.Visible = false

UICorner_38.CornerRadius = UDim.new(0, 20)
UICorner_38.Parent = Drag

Drag_2.Name = "Drag"
Drag_2.Parent = Drag
Drag_2.AnchorPoint = Vector2.new(0.5, 0.5)
Drag_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drag_2.BackgroundTransparency = 0.700
Drag_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Drag_2.BorderSizePixel = 0
Drag_2.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Drag_2.Size = UDim2.new(0, 100, 0, 4)

UICorner_39.CornerRadius = UDim.new(0, 20)
UICorner_39.Parent = Drag_2

Interact_10.Name = "Interact"
Interact_10.Parent = Drag
Interact_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact_10.BackgroundTransparency = 1.000
Interact_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Interact_10.BorderSizePixel = 0
Interact_10.Size = UDim2.new(1, 0, 1, 0)
Interact_10.Font = Enum.Font.SourceSans
Interact_10.Text = ""
Interact_10.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact_10.TextSize = 14.000
Interact_10.TextTransparency = 1.000

Loading.Name = "Loading"
Loading.Parent = Rayfield
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading.BorderSizePixel = 0
Loading.LayoutOrder = 99999
Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
Loading.Size = UDim2.new(0, 400, 0, 100)
Loading.Visible = false

-- Title_23.Name = "Title"
-- Title_23.Parent = Loading
-- Title_23.AnchorPoint = Vector2.new(0.5, 0.5)
-- Title_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
-- Title_23.BackgroundTransparency = 1.000
-- Title_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
-- Title_23.BorderSizePixel = 0    
-- Title_23.LayoutOrder = 1
-- Title_23.Position = UDim2.new(0.5, 0, 0.5, 0)
-- Title_23.Font = Enum.Font.Unknown
-- Title_23.Text = "Rayfield"
-- Title_23.TextColor3 = Color3.fromRGB(255, 255, 255)
-- Title_23.TextSize = 90.000

Logo.Name = "Logo"
Logo.Parent = Loading
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 80, 0, 80)
Logo.Image = fetchData("logo")

UIListLayout_8.Parent = Loading
UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_8.Padding = UDim.new(0, 5)

return Rayfield
