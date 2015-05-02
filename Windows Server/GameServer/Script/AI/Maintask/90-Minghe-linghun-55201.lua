	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:90-Minghe-linghun-55201.lua
	--		Remark:90?????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:UseSkill(9523,21)
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
			AI:Say("Want to leave Styx?  You better return to say hello once in a while!")
			AI:AddSkill(9523,21)
	        AI:UseSkill(8722,21)
			AI:SetTimer(0,2000,65535)
			AI:SetArray(1,1)
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end
	