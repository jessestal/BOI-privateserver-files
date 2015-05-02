	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2009/11/07
	--		Author£ºË¾ÎÄ²©
	--		Class:	.Lua
	--		AIName£ºSwb-Mjmy-51508.lua
	--		Remark£º
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			x = AI:GetPosX()
	    y = AI:GetPosY()
	    AI:SummonMonsterByPos( 51509 , x , y )
			
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(0,3000,65535)
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
	