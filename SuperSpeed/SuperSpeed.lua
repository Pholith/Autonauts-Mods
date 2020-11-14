local baseSpeed = ModVariable.GetVariableForObjectAsFloat("FarmerPlayer", "BaseDelay");
local speedMultiplier = 10;

function SteamDetails() 
    ModBase.SetSteamWorkshopDetails("SuperSpeed", "Your player is now super fast", {"speed", "movement"}, "SuperSpeed.png")
end
-- Used near exclusively for Steam Workshop and Mod information

function BeforeLoad()
    ModVariable.SetVariableForObjectAsFloat("FarmerPlayer", "BaseDelay", baseSpeed / speedMultiplier)

end
-- Initial load function by game

function Expose() 
    ModBase.ExposeVariable("Speed Multiplier", speedMultiplier, SpeedCallback, 1, 30)
end 
function SpeedCallback( param )
    speedMultiplier = param
end



function AfterLoad()

end
-- Once game has loaded key functionality this is called.

function OnUpdate()

end
-- Called every frame


function Creation()
end
-- Used to create any custom converters or buildings
