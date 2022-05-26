local camera = workspace.CurrentCamera
local blurAmount = 7
local blurAmplifier = 20
local lastLookVector = camera.CFrame.LookVector

local motionProfile = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)
if property == "CurrentCamera" then
    print("Changed cam")
    camera = workspace.CurrentCamera
    
    if motionProfile and motionProfile.Parent then
        motionProfile.Parent = camera
    else
        motionProfile = Instance.new("BlurEffect", camera)
    end
end

end)


runService.Heartbeat:Connect(function()
    if not motionProfile or motionProfile.Parent == nil then
        motionProfile = Instance.new("BlurEffect", camera)
    end

    local magnitude = (camera.CFrame.LookVector - 
lastLookVector).magnitude
    motionProfile.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
    lastLookVector = camera.CFrame.LookVector
end)
