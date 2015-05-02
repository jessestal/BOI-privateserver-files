	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2009/11/07
	--		Author£ºË¾ÎÄ²©
	--		Class:	.Lua
	--		AIName£ºSwb-Mjmy-51506.lua
	--		Remark£ºÁé»êÖ®ÇòA 150.168
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			mapid = AI:GetMapID()
			road = AI:GetEctypeVarShort( mapid , 22 )
			if road == 2 then
				AI:SetAIState(0)
			end
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(254,123,212)
	    AI:AddSeekPos(254,122,186)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 123 ) and ( PosY == 212 )) then
			AI:SetAIState(7)
			mapid = AI:GetMapID()
			road = AI:GetEctypeVarShort( mapid , 22 )
			AI:SetEctypeVarShort( mapid , 22 , road + 1 )
			AI:SetTimer(0,500,65535)
		elseif (( PosX == 122 ) and ( PosY == 186 )) then
			AI:SelfMurder()
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	