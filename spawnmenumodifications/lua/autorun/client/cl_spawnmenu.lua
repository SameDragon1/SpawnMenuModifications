local function removeOldTables()

if table.HasValue( SAMEDRAGON_SPAWNMENU_CONFIG_ADMINS, LocalPlayer() :GetUserGroup()) then return end
    for k, v in pairs( g_SpawnMenu.CreateMenu.Items ) do
        if (v.Tab:GetText() == language.GetPhrase("spawnmenu.category.npcs") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.entities") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.weapons") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.vehicles") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.postprocess") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.props") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.dupes") or
            v.Tab:GetText() == language.GetPhrase("spawnmenu.category.saves")) then
            g_SpawnMenu.CreateMenu:CloseTab( v.Tab, true )
            removeOldTables()
        end
    end
end

hook.Add("SpawnMenuOpen", "blockmenutabs", removeOldTables)
