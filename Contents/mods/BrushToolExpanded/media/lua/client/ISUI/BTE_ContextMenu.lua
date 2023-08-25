require("ISUI/ISWorldObjectContextMenu")

local function toggleThumpableSetting()
    if BTE.IsThumpable then
        BTE.IsThumpableString = "OFF"
        BTE.IsThumpable = false
    else
        BTE.IsThumpableString = "ON"
        BTE.IsThumpable = true
    end
end

doBrushToolOptionsOriginal = doBrushToolOptionsOriginal or ISWorldObjectContextMenu.doBrushToolOptions
ISWorldObjectContextMenu.doBrushToolOptions = function(context, worldobjects, player)
    local btmeContext = context:addOption("Brush Tool Manager Expanded", worldobjects)
	local btmeSubMenu = context:getNew(context)
	context:addSubMenu(btmeContext, btmeSubMenu)

    btmeSubMenu:addOption("Is Thumpable [Current ".. BTE.IsThumpableString .."]", player, toggleThumpableSetting)

    doBrushToolOptionsOriginal(context, worldobjects, player)
end