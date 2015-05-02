

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
	    AI:AddSeekPos(mapid,278,40)-- ??boss??
	    AI:SetArray(1,1)
	   end
end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()	

		if (( PosX == 278 ) and ( PosY == 40 )) then

		n = AI:GetEctypeVarShort(mapid, 16)
		k = AI:GetEctypeVarShort(mapid, 17)
		s = AI:GetEctypeVarShort(mapid, 18)
		AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")

			if k < 1 then
  			if n == 1 then
  				AI:SummonMonsterByPos(51892,278,40)
  			elseif n == 2 then
  				AI:SummonMonsterByPos(51893, 278, 40)
  			elseif n == 3 then
  				AI:SummonMonsterByPos(51894, 278, 40)
  			elseif n == 4 then
  				AI:SummonMonsterByPos(51899, 278, 40)
  			elseif n == 5 then
  				if s >= 4 then
  					AI:SummonMonsterByPos(51860, 278, 40)
  					AI:Say("You asked for it! Feel my strength! Hahah!")
  					AI:SetEctypeVarShort(mapid, 17, 1)
					end
  			end
  		end
		AI:SelfMurder()
			
		end
		
end




	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)

    	
end