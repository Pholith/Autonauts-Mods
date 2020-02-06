function SteamDetails() 
    ModBase.SetSteamWorkshopDetails("MyFirstMod", "Description", {"tag1", "tag2"}, "ThisIsTheLogo.png")
end
-- Used near exclusively for Steam Workshop and Mod information
function OnLoad()
    print("test")

end

function BeforeLoad()

end
-- Initial load function by game

function AfterLoad()

end
-- Once game has loaded key functionality this is called.

function OnUpdate()

    ModVariable.SetVariableForObjectAsFloat("FarmerPlayer", "SpeedScale", 5)

end
-- Called every frame


function Creation()
end
-- Used to create any custom converters or buildings
