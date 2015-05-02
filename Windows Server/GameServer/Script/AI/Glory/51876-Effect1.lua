

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
                
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
end

	function Event_ReadSeekPos(nAI)
	  local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()	
			
		a = AI:GetArray(1)    
		if a == 0 then 
	    AI:AddSeekPos(mapid,103,256)-- Mask1Œª÷√
	    AI:SetArray(1,1)
	   end
end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 103 ) and ( PosY == 256 )) then
		AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_2.ini")
		AI:SelfMurder()
			
		end
		
end




	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)

    	
end