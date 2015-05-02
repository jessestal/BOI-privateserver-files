	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51532.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		--
			AI:Say("Thor's Blessings confers you.") 
			AI:AddSkill(3502,1)
			AI:UseSkill(3502,1)
    end
	end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    b = AI:GetArray(1)
    if b == 0 then
	    AI:SetTimer(0,20000,65535)
	    AI:SetArray( 1 , 1 )
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end
