	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/04/09
	--		Author:???
	--		Class: Lua
	--		AIName:Elinggubao-51623.lua
	--		Backup:???????
	--****************************************


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	AI:PlayEffect("skill\\Common\\Common_baozha_01\\tx_common_baozha_01.ini")
	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
	AI:ScreenText("Script Spirits appear!",2)
end