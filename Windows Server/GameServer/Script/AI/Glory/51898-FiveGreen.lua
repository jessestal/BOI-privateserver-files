

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)

end
          

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

end

	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)

			mapid = AI:GetMapID()
    	x = AI:GetPosX()
    	y = AI:GetPosY()

    	AI:SummonMonsterByPos(51891 ,x,y)
    	 	
	end