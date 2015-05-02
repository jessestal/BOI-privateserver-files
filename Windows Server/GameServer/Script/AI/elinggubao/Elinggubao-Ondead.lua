	--****************************************
	--
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2010/04/09
	--		Author£∫Œ∫∂´‘∞
	--		Class: Lua
	--		AIName£∫Elinggubao-Ondead.lua
	--		Backup£∫À¿Õˆ’ŸªΩÃÿ–ßπ÷ 
	--****************************************


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	posx = AI:GetPosX()
	posy = AI:GetPosY()
	AI:SummonMonsterByPos( 51683 , posx , posy )
end