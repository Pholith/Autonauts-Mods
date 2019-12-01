using Harmony;
using System.Reflection;
using static UnityModManagerNet.UnityModManager;

namespace SuperSpeed
{
    class Main
    {
        static bool Load(ModEntry mod)
        {
            var harmony = HarmonyInstance.Create(mod.Info.Id);
            harmony.PatchAll(Assembly.GetExecutingAssembly());
            return true;
        }
    }

    [HarmonyPatch(typeof(FarmerPlayer))]
    [HarmonyPatch("UpdateSpeed")]
    class PatchPlayerSpeed
    {
        static bool Prefix(FarmerPlayer __instance)
        {
            __instance.SetMoveBaseDelay(0.05f);
            return false;
        }
    }
}
