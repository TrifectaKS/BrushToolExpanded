BTE = BTE or {}

BTE.IsThumpableString = "ON" --"OFF"
BTE.IsThumpable = true

BTE.Defaults = {}
BTE.Defaults.IsThumpableString = "ON"
BTE.Defaults.IsThumpable = true

BTE.ResetToDefaults = function()
    BTE.IsThumpableString = BTE.Defaults.IsThumpableString
    BTE.IsThumpable = BTE.Defaults.IsThumpable
end