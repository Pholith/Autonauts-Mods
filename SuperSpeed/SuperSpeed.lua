function SteamDetails() 
    ModBase.SetSteamWorkshopDetails("SuperSpeed", "Your player is now super fast", {"speed", "super"}, "SuperSpeed.png")
end
-- Used near exclusively for Steam Workshop and Mod information


function BeforeLoad()
    ModVariable.SetVariableForObjectAsFloat("FarmerPlayer", "BaseDelay", -2)

end
-- Initial load function by game

function AfterLoad()

end
-- Once game has loaded key functionality this is called.

function OnUpdate()

end
-- Called every frame


function Creation()
end
-- Used to create any custom converters or buildings
