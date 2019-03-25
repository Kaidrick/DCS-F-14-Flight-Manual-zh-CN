local DbOption  = require('Options.DbOption')
local i18n	    = require('i18n')
local oms       = require('optionsModsScripts')

local _ = i18n.ptranslate


-- find the relative location of optionsDb.lua
function script_path() 
    -- remember to strip off the starting @ 
	local luafileloc = debug.getinfo(2, "S").source:sub(2)
	local ti, tj = string.find(luafileloc, "Options")
	local temploc = string.sub(luafileloc, 1, ti-1)
    return temploc
end 

-- find module path
local relativeloc = script_path()
modulelocation = lfs.currentdir().."\\"..relativeloc

local tblCPLocalList = oms.getTblCPLocalList(modulelocation)


return {
	RadioMenuPttOptions				= DbOption.new():setValue(0):combo({DbOption.Item(_('DEFAULT')):Value(0),
								    	DbOption.Item(_('OPEN MENU: RADIO MENU KEY FOLLOWED BY PTT (EXTERNAL RADIO PRIORITY)')):Value(1),
										DbOption.Item(_('HIDE RADIO MENU ON PTT RELEASE')):Value(2),}),
	JESTER_HeadMenu					= DbOption.new():setValue(true):checkbox(),
	JESTER_SwitchToPSTT			    = DbOption.new():setValue(true):checkbox(),
	--JESTER_Boring					= DbOption.new():setValue(false):checkbox(),
	JESTER_LandingCallouts			= DbOption.new():setValue(true):checkbox(),
	JESTER_Camera					= DbOption.new():setValue(true):checkbox(),

	CPLocalList 					= tblCPLocalList["F14B_Cockpit"],	

}
