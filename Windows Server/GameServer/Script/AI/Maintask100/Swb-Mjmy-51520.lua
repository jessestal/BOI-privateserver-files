	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2009/11/07
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：Swb-Mjmy-51520.lua
	--		Remark：隐形的审判者
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(0,5000,65535)
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
	