require("BTE")
require("DebugUIs/BrushTool/BrushToolManager")

local function EveryOneMinute()
	if not BrushToolManager.cheat then
        BTE.ResetToDefaults()
    end
end

Events.EveryOneMinute.Add(EveryOneMinute)