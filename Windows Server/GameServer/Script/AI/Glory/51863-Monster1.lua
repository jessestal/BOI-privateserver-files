

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
        if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
            rand = AI:GetRand(100)
        		if rand < 5 then
            AI:Say("Radiant Temple is now forbidden to enter!") 
            AI:GetRandTarget()
            end
           end
        end
                
        if nIndex == 2 then
        a = AI:GetArray(2)
        	if a == 1 then	
        		rand = AI:GetRand(100)
        		if rand < 8 then
            	AI:AddSkill(2239,1)
            	AI:UseSkill(2239,1) 
            	AI:Say("Who dares to intrude!") 
            elseif rand < 15	then 
           		AI:Say("If you step forward, there shall be no survivors!") 
            ----??????
            end
           end
        end
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,5000,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,10000,3)
			AI:SetArray(2,1)
		end

end


	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:Say("Protect...the Radiant Temple...")
    	x = AI:GetPosX()
    	y = AI:GetPosY()
    	AI:SummonMonsterByPos(51875 ,x,y)
    	
	end