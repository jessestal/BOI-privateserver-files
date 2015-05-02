	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2009/11/07
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：Swb-Mjmy-51523.lua
	--		Remark：隐形的审判者
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:SummonMonsterByPos(51522,116,168)
			AI:SetTimer(1,10000,65535)
		end
		if nIndex == 1 then
		-- 
			AI:SummonMonsterByPos(51522,116,168)
		end
		if nIndex == 2 then
		-- 
			AI:SummonMonsterByPos(51522,128,168)
			AI:SetTimer(0,5000,65535)
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetArray(1,1)
				AI:SetTimer(0,5000,1)
				AI:SetTimer(2,10000,65535)
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
	